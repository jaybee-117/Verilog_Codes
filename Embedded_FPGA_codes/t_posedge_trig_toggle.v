    `timescale 1ns/100ps
    module posedge_trig_toggle_TB();
      reg x;
      reg clk;
      wire y;
      always #5 clk = ~clk;
      posedge_trig_toggle trig(x,clk,y);
      initial begin
        $dumpfile("dump.vcd");
        $dumpvars();
        clk = 0;
        x = 0;
        #40
        x = 1;
        #40
        $finish;
      end
    endmodule


