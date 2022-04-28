`ifndef CALC_AGENT_PKG
`define CALC_AGENT_PKG

package calc_agent_pkg;
 
   import uvm_pkg::*;
   `include "uvm_macros.svh"

   //////////////////////////////////////////////////////////
   // include Agent components : driver,monitor,sequencer
   /////////////////////////////////////////////////////////
   `include "v6_calc_seq_item.sv"
   `include "v6_calc_sequencer.sv"
   `include "v6_calc_driver.sv"

endpackage

`endif



