module Demux4_1(
    input wire data,
    input wire[1:0] sel,
    output wire out0,out1,out2,out3
);
    wire w1,w2;
    Demux2_1 d1(.data(data), .sel(sel[1]), .out0(w1), .out1(w2));
    Demux2_1 d2(.data(w1), .sel(sel[0]), .out0(out0), .out1(out1));
    Demux2_1 d3(.data(w2), .sel(sel[0]), .out0(out2), .out1(out3));

endmodule