`timescale 1ns/100ps

module four_bit_adder_TB();
    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] Cout;
    four_bit_adder fba(A, B, Cout);
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars();
        {A} = 4'b0000;
        {B} = 4'b0000;
        #10
        {A} = 4'b0010;
        {B} = 4'b0100;
        #10
        {A} = 4'b0110;
        {B} = 4'b1000;
        #10
        {A} = 4'b0011;
        {B} = 4'b1100;
        #10
        {A} = 4'b0011;
        {B} = 4'b1010;
        #10
        $finish;
    end 
endmodule