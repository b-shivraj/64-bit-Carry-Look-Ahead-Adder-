`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 17:28:13
// Design Name: 
// Module Name: adder32
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


module adder32(a,b,cin,s,cout); 
    input [31:0]a,b; 
    input cin; 
    output [31:0]s;
    output cout; 
    
    wire c1,c2,c3; 
    
    adder8 Add1(.s(s[7:0]),.cout(c1),.a(a[7:0]),.b(b[7:0]),.cin(cin));
    adder8 Add2(.s(s[15:8]),.cout(c2),.a(a[15:8]),.b(b[15:8]),.cin(c1));
    adder8 Add3(.s(s[23:16]),.cout(c3),.a(a[23:16]),.b(b[23:16]),.cin(c2));
    adder8 Add4(.s(s[31:24]),.cout(cout),.a(a[31:24]),.b(b[31:24]),.cin(c3)); 
    
    
endmodule
