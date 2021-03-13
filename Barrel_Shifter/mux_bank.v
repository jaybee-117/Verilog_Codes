module mux_bank(
    input wire[15:0] Input,
    input wire select,
    output reg[7:0] Output
);
    wire[7:0] output1;
        Mux_21 mux7(.v0(Input[15]),.v1(Input[14]),.x(select),.z(output1[7]));
        Mux_21 mux6(.v0(Input[13]),.v1(Input[12]),.x(select),.z(output1[6]));
        Mux_21 mux5(.v0(Input[11]),.v1(Input[10]),.x(select),.z(output1[5]));
        Mux_21 mux4(.v0(Input[9]),.v1(Input[8]),.x(select),.z(output1[4]));
        Mux_21 mux3(.v0(Input[7]),.v1(Input[6]),.x(select),.z(output1[3]));
        Mux_21 mux2(.v0(Input[5]),.v1(Input[4]),.x(select),.z(output1[2]));
        Mux_21 mux1(.v0(Input[3]),.v1(Input[2]),.x(select),.z(output1[1]));
        Mux_21 mux0(.v0(Input[1]),.v1(Input[0]),.x(select),.z(output1[0]));
        
    always @(*) Output <= output1;
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