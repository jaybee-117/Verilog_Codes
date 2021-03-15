# Using Behavioural and Structural coding for a 8:1 Mux
### For Behavioural analysis:
'''
$ iverilog t_8Mux_using_2Mux.v 8Mux_using_2Mux.v 2Mux_behavioural.v
$ vvp a.out
'''
### For Conditional analysis:
'''
$ iverilog t_8Mux_using_2Mux.v 8Mux_using_2Mux.v 2Mux_structural.v
$ vvp a.out
'''
