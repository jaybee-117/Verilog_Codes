    `timescale 1ns/100ps
    module majority(
        input a,
        input b,
        input c,
        output reg x);
      
      always @ * 
        case ({a,b,c})
          3'b000 : x = 0;
          3'b001 : x = 0;
          3'b010 : x = 0;
          3'b011 : x = 1;
          3'b100 : x = 0;
          3'b101 : x = 1;
          3'b110 : x = 1;
          3'b111 : x = 1;
        endcase
    endmodule