module t_UDP;
    wire D;
    reg A,B,C;

    UDP_117 M1(D,A,B,C);

    initial
        begin
            begin
                $dumpfile("UDP.vcd");
                $dumpvars
            end
            A = 1'b0; B = 1'b0; C = 1'b0;
            #100  A = 1'b1; B = 1'b1; C = 1'b1;    
        end
    
    initial #200 $finish;
endmodule 
