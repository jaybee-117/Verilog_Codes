module Mux_81 (
    input wire[7:0] data,
    input wire a2,
    input wire a1,
    input wire a0,
    output reg y
);
    wire z1,z2,z3,z4,z5,z6,z7;

    Mux_21 Mux_21_1(data[7], data[6], a0, z1);
    Mux_21 Mux_21_2(data[5], data[4], a0, z2);
    Mux_21 Mux_21_3(data[3], data[2], a0, z3); 
    Mux_21 Mux_21_4(data[1], data[0], a0, z4);

    Mux_21 Mux_21_5(z1, z2, a1, z5);
    Mux_21 Mux_21_6(z3, z4, a1, z6);

    Mux_21 Mux_21_7(z5, z6, a2, z7);

    always @ (z7)  begin
        y=z7;
    end
    
endmodule