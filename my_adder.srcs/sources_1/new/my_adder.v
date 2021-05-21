`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2021 02:48:49 PM
// Design Name: 
// Module Name: my_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module my_adder(
    input wire X,
    input wire Y,
    input wire C_in,
    output wire C_out,
    output wire Z
    );
    
assign Z=X^Y^C_in;
assign C_out=(C_in&Y)|(C_in&X)|(X&Y);

endmodule
