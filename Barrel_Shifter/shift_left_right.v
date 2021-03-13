module shift_left_right(
    input wire[7:0] Input,
    input wire[2:0] select,
    input wire control,
    output reg[7:0] Output
);
    integer i,j;
    reg [7:0] input0;
    reg [15:0] input1;
    reg [15:0] input2;
    reg [15:0] input3;
    wire[7:0] output1;
    wire[7:0] output2;
    wire[7:0] output3;
    reg[7:0] temp;

    always @(*)begin

        if (control == 1)begin
            for(i=0;i<=7;i=i+1)begin
                input0[i] <= Input[7-i];
            end
        end
        else input0<=Input;
        //bank 1:
        j = 7;
        for(i=15;i>=0;i = i-2)begin
            if (i > 1)begin
                input1[i] <= input0[j];
                input1[i-1] <= input0[j-1];
                j = j-1;
            end
            else begin
                input1[1] <= input0[0];
                input1[0] <= 1'b0;
            end
        end

        //bank 2:
        j = 7;
        for(i=15;i>=0;i = i-2)begin
            if (i > 3)begin
                input2[i] <= output1[j];
                input2[i-1] <= output1[j-2];
                j = j-1;
            end
            else begin
                input2[3] <= output1[1];
                input2[2] <= 1'b0;
                input2[1] <= output1[0];
                input2[0] <= 1'b0;
            end
        end

        //bank 3:
        j = 7;
        for(i=15;i >= 0;i = i-2)begin
            if (i > 7)begin
                input3[i] <= output2[j];
                input3[i-1] <= output2[j-3];
                j = j-1;
            end
            else begin
                input3[7] <= output2[3];
                input3[6] <= 1'b0;
                input3[5] <= output2[2];
                input3[4] <= 1'b0;
                input3[3] <= output2[1];
                input3[2] <= 1'b0;
                input3[1] <= output2[0];
                input3[0] <= 1'b0;
            end
        end
        if (control == 1)begin
            for(i=0;i<=7;i=i+1)begin
                Output[i] <= output3[7-i];
            end
        end
        else Output <= output3;
    end
    mux_bank bank1(.Input(input1),.select(select[0]),.Output(output1));
    mux_bank bank2(.Input(input2),.select(select[1]),.Output(output2));
    mux_bank bank3(.Input(input3),.select(select[2]),.Output(output3));
endmodule
