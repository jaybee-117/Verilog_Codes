module Demux2_1(
    input wire data,
    input wire sel,
    output wire out0,
    output wire out1
);
     wire sel_bar;
     not (sel_bar,sel);
     cmos (out0,data,sel_bar,sel);
     cmos (out1,data,sel,sel_bar);
endmodule