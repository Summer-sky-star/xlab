module  cnn_ctl (
    //  SYSTEM SIGNALS
    input   wire                    clk ,
    input   wire                    rstn,

    //  总线信号
    input   wire    [ 2 : 0]   		as_address	 		, 	//选择对应地址寄存器			
	input   wire                    as_write	 		,		
	input   wire                    as_read		 		,		
    input   wire    [31 : 0]        avs_writedata		,
    output  wire    [31 : 0]        avs_readdata 		,
	output	wire					avs_data_waitquest	,	//这里一直拉低（不等待）
		
	 //  CNN_TOP数据
	output	reg		[63 : 0]		ddr_in1		 		,						
	output	reg		[63 : 0]		ddr_out1	 		,		
	output	reg		[63 : 0]		ddr_scale	 		,		
	output	reg		[63 : 0]		ddr_wl		 		,			
	output	reg		[63 : 0]		param		 		,
	//	 CNN_TOP状态
	input							done ,
	input							busy ,
	output							stall,	
	output	reg						start
);

	reg		[3:0]	cnt;
	reg     [31:0]  State;
	assign			avs_data_waitquest = 0;
	assign			stall = 0;

	wire StateSel;
	assign StateSel = as_address[2:0] == 3'h5;

	//	 写地址 ddr_in1（地址为 0）
	always@(posedge clk or negedge rstn)	begin
	if(!rstn)
	begin
		ddr_in1  <= 64'd0;
		ddr_out1 <= 64'd0;
		ddr_scale<= 64'b0;	
		ddr_wl	 <= 64'd0;	
		param	 <= 64'b0;	
	end
	else if(as_write)
		begin
			case(as_address)
			0: ddr_in1  <= {ddr_in1[31:0],avs_writedata};
			1: ddr_out1 <= {ddr_out1[31:0],avs_writedata};
			2: ddr_scale<= {ddr_scale[31:0],avs_writedata};
			3: ddr_wl	<= {ddr_wl[31:0],avs_writedata};
			4: param	<= {param[31:0],avs_writedata};
			default:
				begin
					ddr_in1     <= ddr_in1    ;
				    ddr_out1    <= ddr_out1   ;
				    ddr_scale   <= ddr_scale  ;
				    ddr_wl		<= ddr_wl	  ;
				    param		<= param	  ;
				end
			endcase
		end
	else
		begin
			ddr_in1     <= ddr_in1    ;
			ddr_out1    <= ddr_out1   ;
			ddr_scale   <= ddr_scale  ;
			ddr_wl		<= ddr_wl	  ;
			param		<= param	  ;				   
		end
	
	end	
	//判断是否拉高start
	always@(posedge clk or negedge rstn) begin
	if(!rstn)
	  State <= 1'b0;
	else 
	  if(StateSel & as_write)
	    State <= avs_writedata[0];
	  else if(done)
	    State <= 1'b0;
	end
	
	always@(posedge clk or negedge rstn) begin
      if(~rstn)
	    start <= 1'b0;
	  else 
	    if(StateSel & as_write & avs_writedata[0])
		  start <= 1'b1;
        else if(~busy)
		  start <= 1'b0;
	end

	assign avs_readdata = {32{as_read}} & ({32{StateSel}} & {31'b0, State});
	
endmodule
	
	
	
	
	
	
	
	
	
	
	
	
	
	


		
		
		
		
		