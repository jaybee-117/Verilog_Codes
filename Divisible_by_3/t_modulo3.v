`timescale 1ns/100ps

module t_modulo3();
    reg[7:0] number;         //input number
    wire divisible;           //1 => divisble by 3, 0 => notdivisible by 3
    reg clk;

    always #10 clk = ~clk;   //clk period = 20ns


    //module instantiation
    modulo3 m1(.in(number), .out(divisible), .clk(clk));

    initial begin
        $dumpfile("modulo3.vcd");
        $dumpvars();
        $monitor("Time = %d Number = %d Divisible = %b",$time, number, divisible);
        clk = 0;
        number = 8'b00000000; //0
        #200;
        number = 8'b00000110; //6
        #200
        number = 8'b00000111; //7
        #200
        number = 8'b00101101; //45
        #200
        number = 8'b01100000; //96
        #200
        number = 8'b01100100; //100
        #200
        number = 8'b11111111; //255
        #200;
        $finish();
    end
endmodule