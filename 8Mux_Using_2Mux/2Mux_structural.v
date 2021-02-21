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