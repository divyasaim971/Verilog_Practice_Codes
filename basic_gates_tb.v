`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2024 09:11:37 PM
// Design Name: 
// Module Name: basic_gates_tb
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


module basic_gates_tb;
reg a,b;
wire c;
basic_gates dut(n_t,a_d,o_r,n_d,n_r,x_r,xn_r,a,b);
initial
begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
# 10 $finish;
end 
endmodule
