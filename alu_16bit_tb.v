`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module alu_16bit_tb;

reg [15:0] A, B;
reg [3:0] ALU_Sel;

wire [15:0] Result;
wire Carry, Zero, Overflow, Negative;

alu_16bit uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .Result(Result),
    .Carry(Carry),
    .Zero(Zero),
    .Overflow(Overflow),
    .Negative(Negative)
);

initial begin

    A = 16'd10; B = 16'd5;

    ALU_Sel = 4'b0000; #10; // ADD
    ALU_Sel = 4'b0001; #10; // SUB
    ALU_Sel = 4'b0010; #10; // AND
    ALU_Sel = 4'b0011; #10; // OR
    ALU_Sel = 4'b0100; #10; // XOR
    ALU_Sel = 4'b0101; #10; // NOT
    ALU_Sel = 4'b0110; #10; // SHIFT LEFT
    ALU_Sel = 4'b0111; #10; // SHIFT RIGHT

    A = 16'd32767; B = 16'd1;
    ALU_Sel = 4'b0000; #10; 

    $finish;
end

endmodule