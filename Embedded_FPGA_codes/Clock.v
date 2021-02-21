//The clock works @ a period of 1ns
//the time format is: Hour1-Hour2-Min1-Min2

`timescale 1ns/100ps
module watch(input clk, 
output reg [3:0] Hour1,
output reg [3:0] Hour2,
output reg [3:0] Min1,
output reg [3:0] Min2);

//reset after 24hrs
always @ (posedge clk) begin
        Hour1 <= 0;
        Hour2 <= 0;
        Min1 <= 0;
        Min2 <= 0; 
        #86400;    
end

//ones of a minute
always @ (posedge clk) begin
    #60;
    Min2 <= Min2 + 1;
    if (Min2 > 8 )
        Min2 <= 4'b0000;
end

//tens of a minute
always @ (posedge clk) begin
    #600;
    Min1 <= Min1 + 1;
    if (Min1 > 4 )
        Min1 <= 4'b0000;
end

//ones of an hour
always @ (posedge clk) begin
    #3600;
    Hour2 <= Hour2 + 1;
    if (Hour2 > 8 )
        Hour2 <= 4'b0000;
end

//tens of an hour
always @ (posedge clk) begin
    #36000;
    Hour1 <= Hour1 + 1;
end
endmodule