  `timescale 1ns/100ps
  module posedge_trig_toggle(input x, input clk, output reg y);
    always @(posedge clk) begin
      y = ~x;
    end
  endmodule