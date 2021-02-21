    `timescale 1ns/100ps
     
    module demux_TB();
      reg in;
      reg [1:0] select;
      wire out0, out1, out2, out3;
      
      four_in_demux my_demux({out3,out2,out1,out0},select,in);
      always #1 in=~in;
      
      initial begin
        $dumpfile("out.vcd");
        $dumpvars(1,demux_TB);
        in=0;
        select=2'b00;
        #20
        select=2'b01;
        #20
        select=2'b10;
        #20
        select=2'b11;
        #20
        $finish;
      end
     
    endmodule


