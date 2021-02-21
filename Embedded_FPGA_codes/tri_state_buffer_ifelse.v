    `timescale 1ns/100ps
    module tri_state_buffer_ifelse(
      input in,
      input en,
      output out);
      reg out;
      always @ (in,en) begin
        if(en)
          out = in;
        else
          out = 1'bz;
      end
    endmodule