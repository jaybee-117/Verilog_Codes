`timescale 1ns/100ps

module clock();
    reg clk;
    always begin      //duty cycle = 25% , T = 40ns
        clk = ~clk;
        #30;
        clk = ~clk;
        #10;
    end
    initial begin
        $dumpfile("clk.vcd");
        $dumpvars();
        clk = 0;
        #400;
        $finish;
    end
endmodule