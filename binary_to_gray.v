`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2025 13:00:52
// Design Name: 
// Module Name: binary_to_gray
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
module binary_to_gray (
    input [3:0] binary,  // 4-bit binary input
    output [3:0] gray    // 4-bit Gray code output
);

    // Conversion logic
    assign gray[3] = binary[3];          // Most significant bit remains the same
    assign gray[2] = binary[3] ^ binary[2]; // XOR of MSB and next bit
    assign gray[1] = binary[2] ^ binary[1]; // XOR of next two bits
    assign gray[0] = binary[1] ^ binary[0]; // XOR of least two bits

endmodule