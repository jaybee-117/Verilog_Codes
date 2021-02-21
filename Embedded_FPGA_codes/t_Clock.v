//the test-bench just to give a clock to the clock module 
    
`timescale 1ns/100ps
module watch_tb();
    reg clk;
    wire [3:0] Hour1;
    wire [3:0] Hour2;
    wire [3:0] Min1;
    wire [3:0] Min2;
    watch t_watch(clk, Hour1, Hour2, Min1, Min2);
    always
        #1 clk = ~clk ;
    initial 
        begin
            $dumpfile("dump.vcd");
            $dumpvars();
            clk =0;
            #90000;
            $finish;
        end
endmodule