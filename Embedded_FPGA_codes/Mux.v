    `timescale 1ns/100ps
    module four_to_one_mux(
      input [3:0] my_ins,
      input [1:0] sel,
      output my_out
      );
      
      assign my_out = 
        (~sel[1] & ~sel[0] & my_ins[0]) | 
        (~sel[1] &  sel[0] & my_ins[1]) | 
        ( sel[1] & ~sel[0] & my_ins[2]) | 
        ( sel[1] &  sel[0] & my_ins[3]);
    endmodule