
module t_ff(input clk, input toggle, output reg b=0);
    always @ (negedge clk) begin
        if (toggle!=0)  b= ~b;
    end
endmodule