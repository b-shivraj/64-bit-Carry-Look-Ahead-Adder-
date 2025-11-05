`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 17:44:35
// Design Name: 
// Module Name: stimuli
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


module stimuli;
    wire [63:0]s; 
    wire cout; 
    reg [63:0]a,b; 
    reg cin; 
    
    adder64 DUT(.a(a),.b(b),.cin(cin),.s(s),.cout(cout)); 
    
    initial 
    begin 
    #10 a=64'h0000ffff0000ffff;  b=64'hffff0000ffff0000; cin=1'b0;
    #10 a=64'h0001000000010000;  b=64'h0110000001100000; cin=1'b0;
    #10 a=64'h1100110011001100;  b=64'h0011001100110011; cin=1'b0;
    #10 a=64'h0000101000001010;  b=64'h0000010100000101; cin=1'b0;
    #10 $finish; 
    end  
    
    initial 
    begin 
        $dumpfile("adder_CLA.vcd"); // specifies the VCD file
		$dumpvars; //dump all the variables
		$monitor("%d,%b,%b,%b,%b,%b",$time,a,b,cin,s,cout);
    end 
endmodule
