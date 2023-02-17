module student(
		//////////// CLOCK //////////
      input              fpga_clk_50,
       ///////// Buttons /////////  		//KEY is Low-Active
      input    [ 2: 0]   usr_key_i, 	
      ///////// Swtiches /////////
      input    [ 2: 0]   usr_sw_i,
      ///////// LED 		 /////////			//LED is High-Active 
      output   [ 7: 0]   usr_led_o
);


//define the time counter
reg [31:0]      timer;
reg [ 1:0]	usr_led_1;

// cycle counter:from 0 to 4 sec
always@(posedge fpga_clk_50)
begin
	if (timer == 32'd99_999_999)     		//4 seconds count(50M*4-1=199999999)
		timer <= 32'd0;                     //count done,clearing the time counter
	else
		timer <= timer + 32'd1;             //timer counter = timer counter + 1
end

// LED control
always@(posedge fpga_clk_50)
begin
	if(timer == 32'd49_999_999)       		//time counter count to 1st sec,LED1 lighten
		usr_led_1[1:0] <= 2'b01;
	else if (timer == 32'd99_999_999)      //time counter count to 2nd sec,LED2 lighten
		usr_led_1[1:0] <= 2'b10;
end

assign usr_led_o[7:5] = usr_key_i;
assign usr_led_o[4:2] = usr_sw_i;
assign usr_led_o[1:0] = usr_led_1;

endmodule
