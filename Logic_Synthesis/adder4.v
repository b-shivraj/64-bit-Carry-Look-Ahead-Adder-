`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Shivraj Babar
// 
// Create Date: 10.06.2025 18:50:44
// Design Name: 
// Module Name: adder4
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


module adder4(s,cout,a,b,cin); 
    input [3:0]a,b; 
    input cin; 
    output [3:0]s;
    output cout; 
    
    assign g0=a[0]&b[0],g1=a[1]&b[1],g2=a[2]&b[2],g3=a[3]&b[3]; 
    assign p0=a[0]^b[0],p1=a[1]^b[1],p2=a[2]^b[2],p3=a[3]^b[3]; 
    
    assign c1=g0|(p0&cin),c2=g1|(p1&c1),c3=g2|(p2&c2),cout=g3|(p3&c3);  
    
    assign s[0]=p0^cin,s[1]=p1^c1,s[2]=p2^c2,s[3]=p3^c3;
    
    
    
endmodule
