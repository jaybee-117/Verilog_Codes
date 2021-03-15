`timescale 1ns/100ps

module t_adder (
);
    reg[3:0] a;
    reg[3:0] b;
    wire[3:0] s_cla,s_rc;
    reg cin;
    wire cout_cla,cout_rc;

    cla_adder cla_1 (.in1(a),.in2(b),.cin(cin),.out(s_cla),.cout(cout_cla));
    //rc_adder rc_1(a,b,cin,s_rc,cout_rc);

    initial begin
        $dumpfile("adder_cla_rc.vcd");
        $dumpvars();
        cin <=0;
        a <= 4'b0010;
        b <= 4'b1110;
        #15;
        a <= 4'b0010;
        b <= 4'b1010;
        #15;
        a <= 4'b0010;
        b <= 4'b0111;
        #15;
        a <= 4'b0110;
        b <= 4'b0110;
        //$monitor(" a = %b \n b = %b\n sum_cla = %b\n sum_rc = %b\n",a,b,s_cla,s_rc);
        #15;
        $finish;

    end
    
endmodule