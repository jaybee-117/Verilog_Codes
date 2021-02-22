`timescale 1ns/100ps

module t_mux();
    reg[2:0] a;
    reg[7:0] data;
    wire y;

    Mux_81 Multiplexer_8_1 (data, a[2], a[1], a[0], y);

    always @* begin
        #100;
        a <= a + 1;
    end

    initial begin
        $dumpfile("8_mux.vcd");
        $dumpvars();

        data <= 8'b10100101;

        a <= 3'b000;
        $monitor("%d, %b , %b", $time, a, y);
        #799;

        $finish;
    end
endmodule 