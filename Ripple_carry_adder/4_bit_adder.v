module four_bit_adder(
    input wire[3:0] a,
    input wire[3:0] b,
    input cin,
    output reg[3:0] s,
    output reg cout
);
    wire[3:0] S;
    wire cout1, cout2, cout3, cout4;
    one_bit_adder one_bit_adder_1 (a[0],b[0],cin,S[0],cout1);
    one_bit_adder one_bit_adder_2 (a[1],b[1],cout1,S[1],cout2);
    one_bit_adder one_bit_adder_3 (a[2],b[2],cout2,S[2],cout3);
    one_bit_adder one_bit_adder_4 (a[3],b[3],cout3,S[3],cout4);
    always @ (*)begin
        s[0] <= S[0];
        s[1] <= S[1];
        s[2] <= S[2];
        s[3] <= S[3];
        cout <= cout4;
    end
    

endmodule