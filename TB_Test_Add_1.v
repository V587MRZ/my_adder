`timescale 1ns / 1ps

module TB_Test_Add_1();

// Inputs
   reg Y;
   reg X;
   reg C_in;

// Output
   wire Z;
   wire C_out;

// Instantiate the UUT
   my_adder UUT (
		.Y(Y), 
		.X(X), 
		.C_in(C_in), 
		.Z(Z), 
		.C_out(C_out)
   );
	
// Duration of simulation
	initial begin: stopat
		#12; $finish;
	end

// Initialize Inputs
	initial begin
		Y = 0;
		X = 0;
		C_in = 0;
	end
	
	initial begin
		#1X = 1'b0;
		Y = 1'b0;
		C_in = 1'b0;
		
		#1X = 1'b1;
		Y = 1'b0;
		C_in = 1'b0;
		
		#1X = 1'b0;
		Y = 1'b1;
		C_in = 1'b0;
		
		#1X = 1'b1;
		Y = 1'b1;
		C_in = 1'b0;
		
		#1X = 1'b0;
		Y = 1'b0;
		C_in = 1'b1;
		
		#1X = 1'b1;
		Y = 1'b0;
		C_in = 1'b1;
		
		#1X = 1'b0;
		Y = 1'b1;
		C_in = 1'b1;
		
		#1X = 1'b1;
		Y = 1'b1;
		C_in = 1'b1;
		
	end

endmodule
