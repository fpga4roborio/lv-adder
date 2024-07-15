`timescale 1ns / 1ps

module Adder(

	input		   clk,
	input			cEn,
	input		   aReset,
	input		   [7:0] dataInA,
	input		   [7:0] dataInB,
	output reg  [7:0] dataOut
	
	);

always @ (posedge clk)

begin

	if(aReset)
		dataOut <= 0;
	else
		begin
			if (cEn)
				dataOut <= dataInA + dataInB;
		end	
		
end 		

endmodule
