module mux_bank(
    input wire[15:0] input,
    input wire select,
    output reg[7:0] output
);
    always @ (*)begin
        Mux_21 mux(.v0(input[15]),.v1(input[14]),.x(select),.z(output[7]));
        Mux_21 mux(.v0(input[13]),.v1(input[12]),.x(select),.z(output[6]));
        Mux_21 mux(.v0(input[11]),.v1(input[10]),.x(select),.z(output[5]));
        Mux_21 mux(.v0(input[9]),.v1(input[8]),.x(select),.z(output[4]));
        Mux_21 mux(.v0(input[7]),.v1(input[6]),.x(select),.z(output[3]));
        Mux_21 mux(.v0(input[5]),.v1(input[4]),.x(select),.z(output[2]));
        Mux_21 mux(.v0(input[3]),.v1(input[2]),.x(select),.z(output[1]));
        Mux_21 mux(.v0(input[1]),.v1(input[0]),.x(select),.z(output[0]));
    end
endmodule

module Mux_21 (
    input wire v0,
    input wire v1,
    input wire x,
    output reg z
);

    always @ (*)begin
       z = (v0&~x)|(v1&x); 
    end

endmodule