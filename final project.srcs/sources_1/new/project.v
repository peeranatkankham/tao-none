`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2022 01:46:42 AM
// Design Name: 
// Module Name: project
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


module project(
    input [6:0] sw,
    input LDR,
    output [7:0] led,
    output [6:0] seg,
    output [2:0] JB,
    output [3:0] an
    );
    assign an = 4'b1110;
    ldrsensor l1(sw,LDR,led);
    display7seg d1(led,seg);
    relay r1(led,JB);
endmodule
