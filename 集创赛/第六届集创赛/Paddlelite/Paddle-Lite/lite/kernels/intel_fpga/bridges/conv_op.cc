// Copyright (c) 2019 PaddlePaddle Authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// new file by hc 20220416

#include "lite/operators/conv_op.h"
#include "lite/core/op_registry.h"
#include "lite/kernels/intel_fpga/bridges/graph.h"
#include "lite/core/subgraph_bridge_registry.h"
#include <arm_neon.h>
namespace paddle {
namespace lite {
namespace subgraph {
namespace intel_fpga {

int ConvConverter(void *ctx, OpLite *op, KernelBase *kernel) {
  CHECK(ctx != nullptr);
  CHECK(op != nullptr);
  auto graph = static_cast<Graph*>(ctx);

  operators::ConvParam& param = kernel->Param<operators::ConvParam>();
  std::string op_type = op->op_info()->Type();
  auto op_info = op->op_info();
  auto scope = op->scope();

  auto input_name = op_info->Input("Input").front();
  auto output_name = op_info->Output("Output").front();
  auto output = scope->FindMutableTensor(output_name);
  auto output_dims = output->dims();
  CHECK_EQ(output_dims[0], param.output->dims()[0]);
  CHECK_EQ(output_dims[1], param.output->dims()[1]);
  CHECK_EQ(output_dims[2], param.output->dims()[2]);
  CHECK_EQ(output_dims[3], param.output->dims()[3]);

   Node* node = new Node();
   node->is_output = graph->IsOutput(output_name);
   node->output_ref_count_ = 0;
   node->parent_ =nullptr;
  // Find this node's parent according to input tensor.
  if(graph->GetNodeByTensorName(input_name)) {
     node->parent_ = graph->GetNodeByTensorName(input_name);
     // Increat parent's output tensor reference.
     (node->parent_)->output_ref_count_++;
  } else { //No parent. So mark this node as root.
    graph->setGraphRootNode(node); 
  }

  // Put this node's output tensor in map.
  graph->setTensor2Node(output_name, node);

  // Let predecessor node in topological order link to this node.
  auto pre_node = graph->getGraphTailNode();
  if(pre_node) {
    pre_node->next_ = node;
  }

  graph->setGraphTailNode(node);

  // Create node's device param.
  node->device_param_ = new nna_conv_s();
  
  node->device_param_->ia = param.x->mutable_data<int8_t>();
  node->device_param_->oa = param.output->mutable_data<int8_t>();

  // Fill fpga_param.
  IntelFpgaConvParam* fpga_param = new IntelFpgaConvParam();
  node->device_param_->ip = fpga_param;
  node->device_param_->param_size = sizeof(IntelFpgaConvParam);
  CHECK_LE(node->device_param_->param_size, NNA_PDM_SIZE);
   auto w_dims = param.filter->dims();

   //std::cout <<" w_dims[0]: " << w_dims[0] << "\n";
   //std::cout <<" w_dims[1]: " << w_dims[1] << "\n";
   auto i_dims = param.x->dims();
   auto o_dims = param.output->dims();
   int group = param.groups;
   auto kw = w_dims[3];
   auto paddings = *param.paddings;
  
   float alpha_ = 1.f;
   IntelFpgaReluType at_;

   switch (param.activation_param.active_type) {
     case lite_api::ActivationType::kRelu:
       at_ = IntelFpgaReluType::kRelu;
       break;
     case lite_api::ActivationType::kRelu6:
       at_ = IntelFpgaReluType::kRelu6;
       break;
     case lite_api::ActivationType::kLeakyRelu:
       at_ = IntelFpgaReluType::kLeakyRelu;
       alpha_ = param.activation_param.Leaky_relu_alpha;
       break;
     default:
       at_ = IntelFpgaReluType::kNoRelu;
       break;
   }
  
   fpga_param->in_c = i_dims[1];
   fpga_param->in_h = i_dims[2];
   fpga_param->in_w = i_dims[3];
   fpga_param->in_pad = paddings[2];  // left
   fpga_param->out_pad = 0;  // left
   fpga_param->kernel = w_dims[2];
   fpga_param->stride = param.strides[0];

   fpga_param->output_c = o_dims[1];
   fpga_param->output_h = o_dims[2];
   fpga_param->output_w = o_dims[3];
   fpga_param->relu = (int)at_; 

   fpga_param->input_offset = 0;
   fpga_param->weight_offset = 0;
   fpga_param->scale_offset = 2;
   fpga_param->output_offset = 0;

   if(group == fpga_param->in_c && fpga_param->in_c == fpga_param->output_c) {
     fpga_param->type =IntelFpgaOpType::kConvDepthwise;
   } else {
     fpga_param->type =IntelFpgaOpType::kConv;
   }
   
   // Fill node->device_param_->ba;
   node->device_param_->ba = new float[(2 * fpga_param->output_c + 2)];
   node->device_param_->scale_size = (2 * fpga_param->output_c + 2) * sizeof(float);
   CHECK_LE(node->device_param_->scale_size, NNA_BSDM_SIZE);
   node->device_param_->ba[0] = param.input_scale;
   node->device_param_->ba[1] = param.output_scale;
   float inv_scale = 1 / param.output_scale;
   const float* b_data = param.bias ? param.bias->data<float>() : nullptr;

   //LOG(INFO) << "Output cahnnel size: " << fpga_param->output_c;
   for(int i = 0; i < param.weight_scale.size(); i++) {
     node->device_param_->ba[2 + i] = param.weight_scale[i];
     if(b_data) {
       node->device_param_->ba[2 + fpga_param->output_c + i] = b_data[i] * inv_scale;
     } else {
       node->device_param_->ba[2 + fpga_param->output_c + i] = 0;
     }
   } 

   // Fill node->device_param_->ka;
  int kernel_size = w_dims[2] * w_dims[3];
  int block_of_input_channel=UpRound(w_dims[1], INPUT_CHANNEL_TILE);
  int block_of_output_channel = UpRound(w_dims[0], DW_OUTPUT_CHANNEL_TILE);
  int block_size, weight_size;
  int weight_output_channel_tile = UpRound(OUTPUT_CHANNEL_TILE, WEIGHT_EXTEND_SCALE);

  if(op_type == "depthwise_conv2d") {
	  block_size = INPUT_CHANNEL_TILE * kernel_size * DW_OUTPUT_CHANNEL_TILE;
	  weight_size = block_of_output_channel * block_size;
  } else {
    block_size = INPUT_CHANNEL_TILE * kernel_size * weight_output_channel_tile * WEIGHT_EXTEND_SCALE;
    weight_size=block_of_output_channel * block_of_input_channel * block_size;
  }

   // Reordered filter.
    node->device_param_->ka =  new int8_t[weight_size];
    const int8_t* weight_int8 = param.filter->data<int8_t>();
    int8_t filter;
    //std::cout <<" Op type: " << op_type << "\n";
    if(op_type == "depthwise_conv2d") {
     std::cout <<" Op type: " << "dw" << "\n";
     for(int idx_outc = 0; idx_outc < DW_WEIGHT_OUTPUT_CHANNEL; ++idx_outc) {
      for(int k = 0; k < kernel_size; ++k) {
      for(int idx_block = 0; idx_block < block_of_output_channel; ++idx_block) {
        for(int idx_inc = 0; idx_inc < INPUT_CHANNEL_TILE; ++idx_inc) {
                int id1=idx_outc * WEIGHT_EXTEND_SCALE;
                int id2=idx_block * block_size
                    + ((idx_inc * kernel_size + k) * DW_WEIGHT_OUTPUT_CHANNEL + idx_outc) * WEIGHT_EXTEND_SCALE ;
                int id3=((idx_block * OUTPUT_CHANNEL_TILE)+ (idx_outc * WEIGHT_EXTEND_SCALE )) * kernel_size + k;
           
                int8_t filter1 = 0;
                int8_t filter2 = 0;
                int8_t filter3 = 0;
                int8_t filter4 = 0;
                int8_t filter5 = 0;
                int8_t filter6 = 0;
                int8_t filter7 = 0;
                int8_t filter8 = 0;
                int8_t filter9 = 0;
                int8_t filter10 = 0;
                int8_t filter11 = 0;
                int8_t filter12 = 0;
                int8_t filter13 = 0;
                int8_t filter14 = 0;
                int8_t filter15 = 0;
                int8_t filter16 = 0;
                if(idx_inc == id1
                  && id1 < w_dims[0]) {
                       filter1=weight_int8[id3];}
                else {;}
                if(idx_inc == id1+1
                  && id1+1 < w_dims[0]) {
                       filter2=weight_int8[id3+ kernel_size];}
                else {;}
                if(idx_inc == id1+2
                  && id1+2 < w_dims[0]) {
                       filter3=weight_int8[id3+2*kernel_size];}
                else {;}
                if(idx_inc == id1+3
                  && id1+3 < w_dims[0]) {
                       filter4=weight_int8[id3+ 3*kernel_size];}
                else {;}
                if(idx_inc == id1+4
                  && id1+4 < w_dims[0]) {
                       filter5=weight_int8[id3+4*kernel_size];}
                else {;}
                if(idx_inc == id1+5
                  && id1+5 < w_dims[0]) {
                       filter6=weight_int8[id3+ 5*kernel_size];}
                else {;}
                if(idx_inc == id1+6
                  && id1+6 < w_dims[0]) {
                       filter7=weight_int8[id3+6*kernel_size];}
                else {;}
                if(idx_inc == id1+7
                  && id1+7 < w_dims[0]) {
                       filter8=weight_int8[id3+ 7*kernel_size];}
                else {;}
                if(idx_inc == id1+8
                  && id1+8 < w_dims[0]) {
                       filter9=weight_int8[id3+8*kernel_size];}
                else {;}
                if(idx_inc == id1+9
                  && id1+9 < w_dims[0]) {
                       filter10=weight_int8[id3+ 9*kernel_size];}
                else {;}
                if(idx_inc == id1+10
                  && id1+10 < w_dims[0]) {
                       filter11=weight_int8[id3+10*kernel_size];}
                else {;}
                if(idx_inc == id1+11
                  && id1+11 < w_dims[0]) {
                       filter12=weight_int8[id3+ 11*kernel_size];}
                else {;}
                if(idx_inc == id1+12
                  && id1+12 < w_dims[0]) {
                       filter13=weight_int8[id3+12*kernel_size];}
                else {;}
                if(idx_inc == id1+13
                  && id1+13 < w_dims[0]) {
                       filter14=weight_int8[id3+ 13*kernel_size];}
                else {;}
                if(idx_inc == id1+14
                  && id1+14 < w_dims[0]) {
                       filter15=weight_int8[id3+14*kernel_size];}
                else {;}
                if(idx_inc == id1+15
                  && id1+15 < w_dims[0]) {
                       filter16=weight_int8[id3+ 15*kernel_size];}
                else {;}

                   
                node->device_param_->ka[id2] = filter1;
                node->device_param_->ka[id2+1] = filter2;
                node->device_param_->ka[id2+2] = filter3;
                node->device_param_->ka[id2+3] = filter4;
                node->device_param_->ka[id2+4] = filter5;
                node->device_param_->ka[id2+5] = filter6;
                node->device_param_->ka[id2+6] = filter7;
                node->device_param_->ka[id2+7] = filter8;
                node->device_param_->ka[id2+8] = filter9;
                node->device_param_->ka[id2+9] = filter10;
                node->device_param_->ka[id2+10] = filter11;
                node->device_param_->ka[id2+11] = filter12;
                node->device_param_->ka[id2+12] = filter13;
                node->device_param_->ka[id2+13] = filter14;
                node->device_param_->ka[id2+14] = filter15;
                node->device_param_->ka[id2+15] = filter16;
                /*if(idx_inc == (idx_outc * WEIGHT_EXTEND_SCALE + m)
                  && (idx_outc * WEIGHT_EXTEND_SCALE + m) < w_dims[0]) {
                  filter = weight_int8[idx_block * OUTPUT_CHANNEL_TILE * kernel_size +
                      (idx_outc * WEIGHT_EXTEND_SCALE + m) * kernel_size + k];
                } else {
                  filter = 0;
                }
                node->device_param_->ka[idx_block * block_size
                    + ((idx_inc * kernel_size + k) * DW_WEIGHT_OUTPUT_CHANNEL + idx_outc) * WEIGHT_EXTEND_SCALE + m] = filter;
              }*/
            }
          }
        }
      }
    } else {
      // For conv, reorder weight data from [out_c, int_c, h, w] to
  // [out_block_num, in_block_num, input_channel_tile, kernel_size, output_cahnnel_tile].
   //std::cout <<" Op type: " << "conv" << "\n";
   for(int to = 0; to < weight_output_channel_tile; ++to) {
     for(int k = 0; k < kernel_size; ++k) {
        for(int idx_outc_block = 0; idx_outc_block < block_of_output_channel; ++idx_outc_block) {
          for(int idx_inc_block = 0; idx_inc_block < block_of_input_channel; ++idx_inc_block) {
            for(int idx_inc = 0; idx_inc < INPUT_CHANNEL_TILE; ++idx_inc) {
                  int idx_in_channel = idx_inc_block * INPUT_CHANNEL_TILE + idx_inc;
                  int idx_out_channel = idx_outc_block * OUTPUT_CHANNEL_TILE + to * WEIGHT_EXTEND_SCALE;

                  int8_t filter1 = 0;
                  int8_t filter2 = 0;
                  int8_t filter3 = 0;
                  int8_t filter4 = 0;
                  int8_t filter5 = 0;
                  int8_t filter6 = 0;
                  int8_t filter7 = 0;
                  int8_t filter8 = 0;
                  int8_t filter9 = 0;
                  int8_t filter10 = 0;
                  int8_t filter11 = 0;
                  int8_t filter12 = 0;
                  int8_t filter13 = 0;
                  int8_t filter14 = 0;
                  int8_t filter15 = 0;
                  int8_t filter16 = 0;

                  int id1=(idx_out_channel * w_dims[1] + idx_in_channel) * kernel_size + k;
                  int chunk=w_dims[1]*kernel_size ;
                  int id2=(idx_outc_block * block_of_input_channel + idx_inc_block) * block_size
                      + ((idx_inc * kernel_size + k) * weight_output_channel_tile + to) * WEIGHT_EXTEND_SCALE ;
                  if(idx_out_channel >= w_dims[0] ||
                    idx_in_channel >= w_dims[1]) {
                        ;}
                  else{

                      filter1 = weight_int8[id1];
                      if(idx_out_channel +1>= w_dims[0]) 
                      {filter2 = 0;}
                       else
                       {filter2 = weight_int8[id1+chunk];}
                      if(idx_out_channel+2 >= w_dims[0]) 
                        {filter3 = 0;}
                       else
                       {filter3 = weight_int8[id1+2*chunk];}
                      if(idx_out_channel+3 >= w_dims[0]) 
                        {filter4 =0;}
                        else
                       {filter4 = weight_int8[id1+3*chunk];}
                      if(idx_out_channel +4>= w_dims[0]) 
                      {filter5 = 0;}
                       else
                       {filter5 = weight_int8[id1+4*chunk];}
                      if(idx_out_channel+5 >= w_dims[0]) 
                        {filter6 = 0;}
                       else
                       {filter6 = weight_int8[id1+5*chunk];}
                      if(idx_out_channel+6 >= w_dims[0]) 
                        {filter7 =0;}
                        else
                       {filter7 = weight_int8[id1+6*chunk];}
                      if(idx_out_channel +7>= w_dims[0]) 
                      {filter8 = 0;}
                       else
                       {filter8 = weight_int8[id1+7*chunk];}
                      if(idx_out_channel+8 >= w_dims[0]) 
                        {filter9 = 0;}
                       else
                       {filter9 = weight_int8[id1+8*chunk];}
                      if(idx_out_channel+9 >= w_dims[0]) 
                        {filter10 =0;}
                        else
                       {filter10 = weight_int8[id1+9*chunk];}
                      if(idx_out_channel +10>= w_dims[0]) 
                      {filter11 = 0;}
                       else
                       {filter11 = weight_int8[id1+10*chunk];}
                      if(idx_out_channel+11 >= w_dims[0]) 
                        {filter12 = 0;}
                       else
                       {filter12 = weight_int8[id1+11*chunk];}
                      if(idx_out_channel+12 >= w_dims[0]) 
                        {filter13 =0;}
                        else
                       {filter13 = weight_int8[id1+12*chunk];}
                      if(idx_out_channel +13>= w_dims[0]) 
                      {filter14 = 0;}
                       else
                       {filter14 = weight_int8[id1+13*chunk];}
                      if(idx_out_channel+14 >= w_dims[0]) 
                        {filter15 = 0;}
                       else
                       {filter15 = weight_int8[id1+14*chunk];}
                      if(idx_out_channel+15 >= w_dims[0]) 
                        {filter16 =0;}
                        else
                       {filter16 = weight_int8[id1+15*chunk];}



                     }

                   node->device_param_->ka[id2] = filter1;
                   node->device_param_->ka[id2+1] = filter2;
                   node->device_param_->ka[id2+2] = filter3;
                   node->device_param_->ka[id2+3] = filter4;
                   node->device_param_->ka[id2+4] = filter5;
                   node->device_param_->ka[id2+5] = filter6;
                   node->device_param_->ka[id2+6] = filter7;
                   node->device_param_->ka[id2+7] = filter8;
                   node->device_param_->ka[id2+8] = filter9;
                   node->device_param_->ka[id2+9] = filter10;
                   node->device_param_->ka[id2+10] = filter11;
                   node->device_param_->ka[id2+11] = filter12;
                   node->device_param_->ka[id2+12] = filter13;
                   node->device_param_->ka[id2+13] = filter14;
                   node->device_param_->ka[id2+14] = filter15;
                   node->device_param_->ka[id2+15] = filter16;





                  /*if(idx_out_channel >= w_dims[0] ||
                    idx_in_channel >= w_dims[1]) {
                    filter = 0;
                  } else {
                    filter = weight_int8[(idx_out_channel * w_dims[1] + idx_in_channel) * kernel_size + k];
                  }*/
                  /*node->device_param_->ka[(idx_outc_block * block_of_input_channel + idx_inc_block) * block_size
                      + ((idx_inc * kernel_size + k) * weight_output_channel_tile + to) * WEIGHT_EXTEND_SCALE + m] = (int8_t)vget_lane_u8(filter,0);*/
                }
              
            }
          }
        }
      }
    }
  node->device_param_->extent_weight_size = weight_size;
  CHECK_LE(weight_size, NNA_KDM_SIZE);

  if (kw > 3) {
    LOG(FATAL) << "this type dw conv not impl";
  }

  // std::cout << "-------------------------------------------------------\n";
  // std::cout <<" Op type: " << op_type << "\n";
  // std::cout <<" Op output name: " << output_name << " shape:( " << fpga_param->output_c <<
  //     ", " << fpga_param->output_h << ", " << fpga_param->output_w << ")" << "\n";
  // std::cout <<" Op input name: " << input_name << " shape:( " << fpga_param->in_c <<
  //     ", " << fpga_param->in_h << ", " << fpga_param->in_w << ")" << "\n";
  // std::cout << "-------------------------------------------------------\n";
  return SUCCESS;
}

}  // namespace imagination_nna
}  // namespace subgraph
}  // namespace lite
}  // namespace paddle

REGISTER_SUBGRAPH_BRIDGE(
    conv2d,
    kIntelFPGA,
    paddle::lite::subgraph::intel_fpga::ConvConverter);

REGISTER_SUBGRAPH_BRIDGE(
    depthwise_conv2d,
    kIntelFPGA,
    paddle::lite::subgraph::intel_fpga::ConvConverter);

