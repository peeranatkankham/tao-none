`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2022 09:35:55 AM
// Design Name: 
// Module Name: 7seg
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


module display7seg(
    input [7:0] led,
    output reg [6:0] seg
    );
    always @(*)
    begin
        case(led)   
            8'b00000001 : seg = 7'b1111001; 
            8'b00000010 : seg = 7'b0100100; 
            8'b00000100 : seg = 7'b0110000; 
            8'b00001000 : seg = 7'b0011001; 
            8'b00010000 : seg = 7'b0010010; 
            8'b00100000 : seg = 7'b0000010;
            8'b01000000 : seg = 7'b1111000; 
            default: seg = 7'b1000000; 
         endcase
    end
endmodule
