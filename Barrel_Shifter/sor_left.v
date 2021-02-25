module sor_left(
    input wire[7:0] data,
    input wire[2:0] select,
    input wire control,
    output reg[7:0] sor
);
    integer i,j;
    reg[7:0] barrel;

    always@(control) begin
        barrel = data;
        for(j=1;j<=select;j = j+1 ) begin
            for(i=7 ; i>0; i = i -1) begin
                barrel[i]<= barrel[i-1];
                barrel[0]<= barrel[7];
            end
        #1;
        end
            
        //sor = (control<1)? (data << select): barrel;
        if (control == 0)begin
            sor = data<<select;
        end else begin
            sor = barrel;
        end
        
    end
endmodule