`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 17:13:36
// Design Name: 
// Module Name: adder8
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


module adder8(a,b,cin,s,cout); 
    input [7:0]a,b; 
    input cin; 
    output [7:0]s;
    output cout; 
    
    wire c1; 
    adder4 Add1(.s(s[3:0]),.cout(c1),.a(a[3:0]),.b(b[3:0]),.cin(cin));
    adder4 Add2(.s(s[7:4]),.cout(cout),.a(a[7:4]),.b(b[7:4]),.cin(c1));
    
    
endmodule
