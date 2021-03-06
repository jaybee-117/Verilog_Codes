`timescale 1ns/100ps

module t_barrel_shifter();
    reg[7:0] data;
    wire[7:0] sor;
    reg[2:0] select;
    reg control;
    // shift left:
    shift_left_right sl_1(.Input(data), .select(select),.control(control), .Output(sor));
    initial begin
        $dumpfile("shift_left_right.vcd");
        $dumpvars();

        //data to be shifted/rotated
        data <= 8'b10100110;

        //amount of shift/rotation
        select <= 3'b110;

        //shift left
        control<= 0;
        $monitor("Time = %d, Data = %b , Shift/rotate = %b, Control = %b, Shifted/rotated = %b", $time, data, select, control, sor);
        #100;

        //rotate left
        control <= 1;
        #100;
        $finish;
    end
endmodule