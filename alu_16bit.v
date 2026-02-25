`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2026 08:33:50
// Design Name: 
// Module Name: alu_16bit
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


module alu_16bit(
    input [15:0] A,
    input [15:0] B,
    input [3:0] ALU_Sel,
    output reg [15:0] Result,
    output reg Carry,
    output Zero,
    output reg Overflow,
    output Negative
);

always @(*) begin
    Carry = 0;
    Overflow = 0;

    case(ALU_Sel)

        4'b0000: {Carry, Result} = A + B;   // ADD
        4'b0001: {Carry, Result} = A - B;   // SUB
        4'b0010: Result = A & B;            // AND
        4'b0011: Result = A | B;            // OR
        4'b0100: Result = A ^ B;            // XOR
        4'b0101: Result = ~A;               // NOT
        4'b0110: Result = A << 1;           // SHIFT LEFT
        4'b0111: Result = A >> 1;           // SHIFT RIGHT

        default: Result = 16'b0;

    endcase

    // Overflow detection
    if (ALU_Sel == 4'b0000)
        Overflow = (A[15] == B[15]) && (Result[15] != A[15]);

    if (ALU_Sel == 4'b0001)
        Overflow = (A[15] != B[15]) && (Result[15] != A[15]);

end

assign Zero = (Result == 16'b0);
assign Negative = Result[15];

endmodule