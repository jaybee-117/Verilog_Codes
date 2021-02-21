    `timescale 1ns/100ps
    module four_in_demux(
      output reg [3:0] my_outs,
      input [1:0] sel,
      input my_in
      );
      parameter INACTIVE = 0;
      always @ * begin
        if(sel==2'b00) begin
          my_outs[0]=my_in;
          my_outs[1]=INACTIVE;
          my_outs[2]=INACTIVE;
          my_outs[3]=INACTIVE;
        end
        else
          if(sel==2'b01)begin
            my_outs[0]=INACTIVE;
            my_outs[1]=my_in;
            my_outs[2]=INACTIVE;
            my_outs[3]=INACTIVE;
          end
          else
            if(sel==2'b10)begin
              my_outs[0]=INACTIVE;
              my_outs[1]=INACTIVE;
              my_outs[2]=my_in;
              my_outs[3]=INACTIVE;
            end
            else begin
              my_outs[0]=INACTIVE;
              my_outs[1]=INACTIVE;
              my_outs[2]=INACTIVE;
              my_outs[3]=my_in;
            end
      end
      
    endmodule