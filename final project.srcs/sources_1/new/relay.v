`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2022 10:00:31 AM
// Design Name: 
// Module Name: relay
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


module relay(
    input [7:0] led,
    output reg [2:0] JB
    );
    always @(*)
    begin
        case(led)
            8'b00000001 : JB = 3'b001;
            8'b00000010 : JB = 3'b010;
            8'b00000100 : JB = 3'b100;
            8'b00001000 : JB = 3'b011;
            8'b00010000 : JB = 3'b101;
            8'b00100000 : JB = 3'b110;
            8'b01000000 : JB = 3'b111;
            default: JB = 3'b000; 
         endcase
    end
endmodule
