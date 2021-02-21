module gates(A,B,C,D,E);
    output D,E;
    input A,B,C;
    wire w1;

    and #(30) G1(w1, A,B);
    not #(10) G2(E,C);
    or #(20) G3(D,E,w1);
endmodule