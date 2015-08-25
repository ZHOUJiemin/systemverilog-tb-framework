//interface delcaration
interface if_type(input clock);

//signal list
logic a;
logic b;
ligic [31:0] c;

//clocking block
clocking cb_type(@posedge clock)
//specify scew
#default input 1 output 2;
//specify signal direction
input a;
input b;
output c;
endclocking

//modport
modport mp_name1(clocking cb_type);
modport mp_name2(
  output a,
  output b,
  input c
  );
endinterface
