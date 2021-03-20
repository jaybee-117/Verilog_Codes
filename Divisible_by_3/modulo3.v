module modulo3(
    input wire[7:0] in,
    input wire clk,
    output reg out
);
    reg a,A;
    reg b,B;
    reg inp;
    integer i;

    //intialize at every input change
    always @ (in)begin
        //initial state 00; modulo 1 01; modulo 2 10; modulo 3 00
        a = 0;
        b = 0;
        out = 0;
        //state machine
        for (i = 7;i>=0;i=  i-1)begin
            inp = in[i];
            A = a;
            B = b;
            a = (A&inp)|(B&~inp);
            b = (A&~inp)|(~A&~B&inp);
        end

        if (a==0 && b==0) out = 1;
        else out = 0;
    end
endmodule