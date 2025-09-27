`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2025 13:01:55
// Design Name: 
// Module Name: tb_binary_to_gray
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

`timescale 1ns / 1ps

module tb_binary_to_gray;

    reg [3:0] binary;      // Input binary number
    wire [3:0] gray;       // Output Gray code

    // Instantiate the binary to Gray converter
    binary_to_gray converter (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        // Test specific binary values
        $display("Binary    Gray");
        $display("-----------------");

        // Test cases
        binary = 4'b0000; #10;  // 0
        $display("%b    -> %b", binary, gray);
        
        binary = 4'b0001; #10;  // 1
        $display("%b    -> %b", binary, gray);
        
        binary = 4'b0010; #10;  // 2
        $display("%b    -> %b", binary, gray);
        
        binary = 4'b0011; #10;  // 3
        $display("%b    -> %b", binary, gray);
        
        binary = 4'b0100; #10;  // 4
        $display("%b    -> %b", binary, gray);
        
        binary = 4'b1000; #10;  // 8
        $display("%b    -> %b", binary, gray);
        
        binary = 4'b1111; #10;  // 15
        $display("%b    -> %b", binary, gray);

        // End simulation
        $finish;
    end

endmodule
