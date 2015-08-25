class dut_tb_env;

//properties
//virtual interface
virtual interface rtl_if;

//mailboxes
mailbox #(data_type) box_name;

//objects
dut_tb_gen gen;
dut_tb_drv drv;
//...

//methods
function new(virtual interface rtl_if);
  this.rtl_if = rtl_if;
  box_name = new(); //new mailboxes
  gen = new();//new gen
  drv = new();//new drv
endfunction

task run();
fork
  gen.run();
  drv.run();
join
endtask
endclass
