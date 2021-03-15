module full_adder_w_delay (
    input in1,
    input in2,
    input cin,
    output reg sum,
    output reg cout
);

    always @(*)begin
        #5;
        sum <= in1^in2^cin;
        cout <= (in1&in2)|(in1&cin)|(in2&cin);
    end
    
endmodule