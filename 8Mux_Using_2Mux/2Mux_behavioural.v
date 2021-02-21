module Mux_21 (
    input wire v0,
    input wire v1,
    input wire x,
    output reg z
);

    always @ (*)begin
       if (x == 0) begin
           z = v0;
       end
       if (x == 1)begin
           z = v1;
        end
    end

endmodule