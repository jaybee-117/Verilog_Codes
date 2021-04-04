# Clock
### 25% duty cycle, 40ns Time period:
```
$ iverilog Clk.v
$ vvp a.out
```
# 4:1 Demultiplexer
### Using switch-level coding (cmos)
```
$ iverilog t_Demux.v Demux4_1.v Demux2_1.v
$ vvp a.out
```