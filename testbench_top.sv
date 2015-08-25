//test bench top
module dut_tb_top;  //define a module

//parameter
parameter HALF_CYCLE = 5ns;

//variables
bit clk = 0;

//clock generator
always #HALF_CYCLE
clk = ~clk;

//instantiation
//interface
if_type if_name(
  .clock(clk)
);

//dut
dut_type dut_name(
  .clock(if_name.clock),
  //...
);

//test(program)
test_type test_name(
  .rtl_if(if_name)
);

endmodule
