module boolean(D,A,B,C);
    output D;
    input A,B,C;
    assign D = (A&&B)||(~C);
endmodule 
