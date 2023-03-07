`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2022 12:53:10 PM
// Design Name: 
// Module Name: ldrsensor
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


module ldrsensor(
    input [6:0] sw,
    input LDR,
    output reg [7:0] led
    );
    always @(LDR,sw)
    begin
        if(LDR == 0)
            case(sw)
                7'b0000000 : led=8'b00000000;
                7'b0000001 : led=8'b00000001;
                7'b0000010 : led=8'b00000010;
                7'b0000100 : led=8'b00000100;
                7'b0001000 : led=8'b00001000;
                7'b0010000 : led=8'b00010000;
                7'b0100000 : led=8'b00100000;
                7'b1000000 : led=8'b01000000;
            endcase
        else led=8'b00000000;
        end
endmodule
