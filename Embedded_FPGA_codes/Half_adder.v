`timescale 1ns/100ps
module half_adder(input A, input B, output S, output cout);
    xor(S, A, B);
    and(cout, A, B);
endmodule

