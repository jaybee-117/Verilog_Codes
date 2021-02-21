`timescale 1ns/100ps
module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    output [4:0] C
);
    wire c0,c1,c2;
    half_adder C0(A[0], B[0], C[0], c0);
    full_adder C1(A[1], B[1], c0, C[1], c1);
    full_adder C2(A[2], B[2], c1, C[2], c2);
    full_adder C3(A[3], B[3], c2, C[3], C[4]);
endmodule