`timescale 1ns/100ps

module t_adder (
);
    reg[3:0] a;
    reg[3:0] b;
    wire[3:0] s;
    wire cout;
    reg cin;

    four_bit_adder four_bit_adder_1 (a,b,cin,s,cout);

    initial begin
        $dumpfile("adder.vcd");
        $dumpvars();
        cin <=0;
        a <= 4'b0010;
        b <= 4'b1010;
        $monitor(" a = %b \n b = %b\n sum = %b\n cout = %b\n",a,b,s,cout);
        #100;
        $finish;

    end
    
endmodule