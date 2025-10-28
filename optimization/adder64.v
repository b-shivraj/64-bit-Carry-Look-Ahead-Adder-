`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2025 14:34:02
// Design Name: 
// Module Name: adder64
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


module adder64(a,b,cin,s,cout); 
    input [63:0]a,b; 
    input cin; 
    output [63:0]s;
    output cout;  
    
    wire c1;
    adder32 Add1(.s(s[31:0]),.cout(c1),.a(a[31:0]),.b(b[31:0]),.cin(cin));
    adder32 Add2(.s(s[63:32]),.cout(cout),.a(a[63:32]),.b(b[63:32]),.cin(c1));
endmodule
