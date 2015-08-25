//test program
program prog_name(if_type rtl_if);

dut_tb_env env;

initial
begin
//...
env = new(rtl_if);
//...
fork
env.run();
join
end

endprogram
