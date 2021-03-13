`timescale 1ns/100ps

module t_shift_left_rotate_left();
    reg[7:0] data;
    wire[7:0] sor;
    reg[2:0] select;
    
    //control = 0: shift left; control = 1: rotate left/shift right
    reg control;

    //shifter/rotator
    sor_left sl_1(.data(data), .select(select), .control(control), .sor(sor));

    initial begin
        $dumpfile("shift_rotate.vcd");
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