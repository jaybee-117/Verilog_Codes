module t_Demux();   
    wire out0,out1,out2,out3;
    reg inp;
    reg [1:0] select;

    Demux4_1 uut(.data(inp), .sel(select), .out0(out0), .out1(out1), .out2(out2), .out3(out3));

    initial begin
        $dumpfile("Demux.vcd");
        $dumpvars();
        $monitor("Time = %d ns Select = %b Out3=%b Out2=%b Out1=%b Out0=%b", $time,select,out3,out2,out1,out0);
        inp = 1'b1;
        select = 2'b00;
        #5;
        select = 2'b01;
        #5;
        select = 2'b10;
        #5;
        select = 2'b11;
        #5;
        $finish;
    end
endmodule