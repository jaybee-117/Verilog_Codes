
`timescale 1ns/100ps

module t_Devcon();
    reg clock, T;
    reg [3:0] count=3'b000;
    wire b1,b2,b3;
    
    t_ff ff1(.clk(clock),.b(b1),.toggle(T));
    t_ff ff2(.clk(b1),.b(b2),.toggle(T));
    t_ff ff3(.clk(b2),.b(b3),.toggle(T));

    always begin
        count[2] <= b3;
        count[1] <= b2;
        count[0] <= b1;
        #1;
    end 

    always
        #2 clock = ~clock ;
    
    initial 
        begin
            $dumpfile("dump.vcd");
            $dumpvars();
            clock =0;
            T = 1;
            #200;
            $finish;
        end
endmodule