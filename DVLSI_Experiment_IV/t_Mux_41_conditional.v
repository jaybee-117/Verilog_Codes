`timescale 1ns/100ps

module t_Mux_41_conditional ();
    reg[3:0] in;
    wire out;
    reg[1:0] select;
    Mux_41_conditional m1(.in(in), .select(select), .out(out));

    initial begin
        $dumpfile("41_Mux_conditional.vcd");
        $dumpvars();
        $monitor("Time = %d data = %b select = %b output = %b", $time, in, select, out);
        in = 4'b1001;
        select = 2'b00;
        #100;
        select = 2'b01;
        #100;
        select = 2'b10;
        #100;
        select = 2'b11;
        #100
        $finish;
    end
endmodule 