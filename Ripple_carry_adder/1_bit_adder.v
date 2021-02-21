module one_bit_adder (
    input x,
    input y,
    input cin,
    output reg s,
    output reg cout
);

    always @(*)begin
        s <= x^y^cin;
        cout <= (x&y)|(x&cin)|(y&cin);
    end
    
endmodule