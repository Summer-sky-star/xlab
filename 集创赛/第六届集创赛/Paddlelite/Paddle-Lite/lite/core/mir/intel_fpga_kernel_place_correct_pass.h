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

#pragma once
#include <map>
#include <list>
#include <memory>
#include <string>
#include <utility>
#include <vector>

#include "lite/core/mir/pass.h"
#include "lite/core/target_wrapper.h"
#include "lite/operators/subgraph_op.h"
#include "lite/core/mir/type_precision_cast_pass.h"
#include "lite/core/mir/pass_manager.h"

namespace paddle {
namespace lite {
namespace mir {

/*
 * Correct the place of the variables in the SSAGrpah, it will inference the
 * variables' place by the kernels outputs them.
 */
class IntelFPGAKernelPlaceCorrectPass : public ProgramPass {
 public:
  void Apply(const std::unique_ptr<SSAGraph>& graph) override;

 private:
  void CorrectArgumentPlace(SSAGraph* graph) {
    std::map<std::string, Node*> cast_nodes;
    VLOG(3) << "param-type-registry:\n" << ParamTypeRegistry::Global();
    for (auto& x : graph->StmtTopologicalOrder()) {
      auto& inst = x->AsStmt();
      // deal with inputs
      VLOG(4) << "checking op " << inst.op_info()->Repr();

      auto get_argname = [&](
          const std::string& node_name,
          const std::map<std::string, std::vector<std::string>>& argname_map)
          -> std::string {
            for (auto& ele : argname_map) {
              auto it =
                  std::find(ele.second.begin(), ele.second.end(), node_name);
              if (it != ele.second.end()) return ele.first;
            }
            return "";
          };

      auto in = x->inlinks.front();
      if (!in) {
        continue;
      }
      auto out = x->outlinks.front();
      auto p = in->AsArg().type->precision();

      std::string node_name = out->AsArg().name;
      std::string arg_name = get_argname(node_name, inst.op_info()->outputs());
      auto op_type = inst.op_type();

      if(op_type == "conv2d" || op_type == "depthwise_conv2d") {
        bool has_quantized_op_after = false;
        for(auto* out_n: x->outlinks) {
          CHECK(out_n->IsArg());
          std::vector<float> output_scale;
          std::cout<<"Enter 2"<<std::endl;
          auto out_node_name=out_n->arg()->name;
          for(auto* tmp_op: out_n->outlinks) {
            CHECK(tmp_op->IsStmt());
            auto* tmp_op_info = tmp_op->AsStmt().op_info();
            if(tmp_op_info->HasInputScale(out_node_name)) {
              has_quantized_op_after = true;
             auto input_scale = tmp_op_info->GetInputScale(out_node_name);
             output_scale=input_scale;
              break;
            }
            
          }
          if(has_quantized_op_after) {
          inst.mutable_op_info()->SetOutputScale(out_node_name,output_scale);
          }else if (inst.op_info()->HasAttr("out_threshold")){
          has_quantized_op_after=true;
          int bit_length=inst.op_info()->GetAttr<int>("bit_length");
          int range=(1<<(bit_length-1))-1;
          output_scale=std::vector<float>{inst.op_info()->GetAttr<float>("out_threshold")/range};
          inst.mutable_op_info()->SetOutputScale(out_node_name,output_scale);}
        }
        // Change this op's precison to int8, and it's place to intel fpga.
        if(has_quantized_op_after) {
          
          std::cout << "here\n";
          UpdateTarget(inst, TargetType::kIntelFPGA);
          UpdateTensor(inst, in, out, TargetType::kIntelFPGA);

        }}

 /*if (op_type =="transpose2") 
	{
	 if (p == PrecisionType::kInt8) 
	{
          UpdateTarget(inst, TargetType::kARM);
           for (auto* x_out : x->outlinks) {
            UpdateTensor(inst, in, x_out, TargetType::kARM);
          }
          std::cout<<"Enter 4"<<std::endl;
          auto to = LiteType::GetTensorTy(
                    TargetType::kARM, PrecisionType::kFloat, DataLayoutType::kNCHW);
          auto type_precision_pass = dynamic_cast<PrecisionCastPass*>(PassManager::Global().LookUp("type_precision_cast_pass"));
          type_precision_pass->AddCastInst(*in->AsArg().type,
                         *to,
                         in,
                         graph,
                         x,
                         &cast_nodes,
                         graph->valid_places());
        }

      	}*/
      
     



      if (inst.op_info()->HasAttr("forced_scale")) {
        if (p == PrecisionType::kInt8) {
          // UpdateTarget(inst, TargetType::kARM);
          auto to = LiteType::GetTensorTy(
                    TargetType::kARM, PrecisionType::kFloat, DataLayoutType::kNCHW);
          auto type_precision_pass = dynamic_cast<PrecisionCastPass*>(PassManager::Global().LookUp("type_precision_cast_pass"));
          type_precision_pass->AddCastInst(*in->AsArg().type,
                         *to,
                         in,
                         graph,
                         x,
                         &cast_nodes,
                         graph->valid_places());
        }
      }

   /* if (inst.op_type() == "reshape" || inst.op_type() == "reshape2") {
        for (auto* x_in : x->inlinks) {
          std::string in_name =
              get_argname(x_in->AsArg().name, inst.op_info()->inputs());
          if (in_name == "X") {
            in = x_in;
          }
        }

        p = in->AsArg().type->precision();
        if (p != PrecisionType::kFP16) {
          UpdateTarget(inst, TargetType::kHost);
          UpdateTensor(inst, in, out, TargetType::kHost);
        }
      }



      if (inst.op_type() == "split" || inst.op_type() == "transpose" ||
          inst.op_type() == "transpose2") {
        //if (p != PrecisionType::kFP16) {
          //UpdateTarget(inst, TargetType::kARM);
          if (p != PrecisionType::kFP16) {
            UpdateTarget(inst, TargetType::kARM);
            for (auto* x_out : x->outlinks) {
            UpdateTensor(inst, in, x_out, TargetType::kARM);
          }
        }
      }

      if (inst.op_type() == "concat") {
        if (p != PrecisionType::kFP16) {
          UpdateTarget(inst, TargetType::kARM);
          UpdateTensor(inst, in, out, TargetType::kARM);
        }
      }

      if (inst.op_type() == "scale") {
        if (p != PrecisionType::kFP16) {
          UpdateTarget(inst, TargetType::kARM);
          UpdateTensor(inst, in, out, TargetType::kARM);
        
        }
      }

*/
    }
  }




  // Update me's kUnk fields by other's fields.
  void UpdateTarget(mir::Node::Stmt& inst, TargetType new_target) {  // NOLINT
    auto new_place = inst.place();

    new_place.target = new_target;
    if (new_target == TargetType::kARM) {
      new_place.precision = PrecisionType::kFloat;
      new_place.layout = DataLayoutType::kNCHW;
    }
    if (new_target == TargetType::kHost) {
      new_place.precision = PrecisionType::kFloat;
      new_place.layout = DataLayoutType::kNCHW;
    }

    if (new_target == TargetType::kIntelFPGA) {
      new_place.precision = PrecisionType::kInt8;
      new_place.layout = DataLayoutType::kNCHW;
    }

    std::vector<Place> places;
    places.push_back(new_place);
    inst.ResetKernels(places);
  }

  void UpdateTensor(mir::Node::Stmt& inst,  // NOLINT
                    Node* in,
                    Node* out,
                    TargetType new_target = TargetType::kUnk) {
    auto get_argname = [&](
        const std::string& node_name,
        const std::map<std::string, std::vector<std::string>>& argname_map)
        -> std::string {
          for (auto& ele : argname_map) {
            auto it =
                std::find(ele.second.begin(), ele.second.end(), node_name);
            if (it != ele.second.end()) return ele.first;
          }
          return "";
        };

    std::string arg_name =
        get_argname(out->AsArg().name, inst.op_info()->outputs());
    std::string in_name =
        get_argname(in->AsArg().name, inst.op_info()->inputs());

    auto type = inst.picked_kernel().GetInputDeclType(in_name);
    auto tmp_ptype = in->AsArg().type->precision();
    auto tmp_target = type->target();
    auto tmp_layout = type->layout();

    if (new_target == TargetType::kARM) {
      tmp_target = TargetType::kARM;
      tmp_ptype = PrecisionType::kFloat;
      tmp_layout = DataLayoutType::kNCHW;
    }

    if (new_target == TargetType::kIntelFPGA) {
      tmp_target = TargetType::kARM;
      tmp_ptype = PrecisionType::kInt8;
      tmp_layout = DataLayoutType::kNCHW;
    }
    if (new_target == TargetType::kHost) {
      tmp_target = TargetType::kHost;
      tmp_ptype = PrecisionType::kFloat;
      tmp_layout = DataLayoutType::kNCHW;
    }

    out->AsArg().type =
        LiteType::GetTensorTy(tmp_target, tmp_ptype, tmp_layout);
  }
};

}  // namespace mir
}  // namespace lite
}  // namespace paddle

