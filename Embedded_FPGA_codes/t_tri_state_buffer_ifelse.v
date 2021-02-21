    `timescale 1ns/100ps
    module tri_state_buffer_ifelse_TB();
      reg in;
      reg en;
      wire out;
      tri_state_buffer_ifelse buffer(in,en,out);
      initial 
      begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tri_state_buffer_ifelse_TB);
        in = 1'b0;
        en = 1'b0;
        #10
        in = 1'b0;
        en = 1'b1;
        #10
        in = 1'b1;
        en = 1'b0;
        #10
        in = 1'b1;
        en = 1'b1;
        #10
        $finish;
      end
    endmodule


