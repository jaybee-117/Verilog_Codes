module rc_adder (
    input wire[3:0] in1,
    input wire[3:0] in2,
    input wire cin,
    output reg[3:0] out,
    output reg cout
);
    wire cout0,cout1,cout2,cout3;
    wire sum0,sum1,sum2,sum3;
    //adder bank
    full_adder_w_delay fa1(.in1(in1[0]),.in2(in2[0]),.cin(cin),.sum(sum0),.cout(cout0));
    full_adder_w_delay fa2(.in1(in1[1]),.in2(in2[1]),.cin(cout0),.sum(sum1),.cout(cout1));
    full_adder_w_delay fa3(.in1(in1[2]),.in2(in2[2]),.cin(cout1),.sum(sum2),.cout(cout2));
    full_adder_w_delay fa4(.in1(in1[3]),.in2(in2[3]),.cin(cout2),.sum(sum3),.cout(cout3));   
    always @ (*)begin
        //concatenation
        out = {sum3, sum2, sum1, sum0};
        cout = cout3;
    end
endmodule