module Mux_41_conditional(
    input wire[3:0] in,
    input wire[1:0] select,
    output reg out
);
    always @ (select) begin
        if (select == 2'b00) out = in[0];
        else if (select == 2'b01) out = in[1];
        else if (select == 2'b10) out = in[2];
        else out = in[3];
    end
endmodule