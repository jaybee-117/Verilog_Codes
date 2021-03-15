# Barrel Shifter
### Shift or Rotate left:
```
$ iverilog t_sor_left.v sor_left.v
$ vvp a.out
```
### Shift left/right:
```
$ iverilog t_barrel_shifter.v shift_left_right.v mux_bank.v
$ vvp a.out
```
