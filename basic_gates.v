`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2024 09:01:33 PM
// Design Name: 
// Module Name: basic_gates
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

//DATA FLOW//
/*module basic_gates(n_t,a_d,o_r,n_d,n_r,x_r,xn_r,a,b);
input a,b;
output n_t,a_d,o_r,n_d,n_r,x_r,xn_r;
assign n_t = ~a;
assign a_d = a & b;
assign o_r = a | b;
assign n_d = ~(a & b);
assign n_r = ~(a | b);
assign x_r = a ^ b;
assign xn_r = ~(a ^ b);

endmodule*/

//BEHAVIORAL//
/* module basic_gates(n_t,a_d,o_r,n_d,n_r,x_r,xn_r,a,b);
input a,b;
output reg n_t,a_d,o_r,n_d,n_r,x_r,xn_r;
always@(a,b)
begin
 n_t = ~a;
 a_d = a & b;
 o_r = a | b;
 n_d = ~(a & b);
n_r = ~(a | b);
x_r = a ^ b;
xn_r = ~(a ^ b);
end
endmodule*/

//Structural//
module basic_gates(n_t,a_d,o_r,n_d,n_r,x_r,xn_r,a,b);
input a,b;
output n_t,a_d,o_r,n_d,n_r,x_r,xn_r;
not not1(n_t,a);
and and1(a_d,a,b);
or or1(o_r,a,b);
nand nand1(n_d,a,b);
nor nor1(n_r,a,b);
xor xor1(x_r,a,b);
xnor xnor1(xn_r,a,b);
endmodule


