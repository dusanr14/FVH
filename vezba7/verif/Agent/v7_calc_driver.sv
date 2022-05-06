`ifndef CALC_DRIVER_SV
 `define CALC_DRIVER_SV
class calc_driver extends uvm_driver#(calc_seq_item);
   
   
   `uvm_component_utils(calc_driver)
   
   virtual interface calc_if vif;
   function new(string name = "calc_driver", uvm_component parent = null);
      super.new(name,parent);
      
      if (!uvm_config_db#(virtual calc_if)::get(null, "*", "vif", vif))
        `uvm_fatal("NOVIF",{"virtual interface must be set:",get_full_name(),".vif"})
      
   endfunction
   
   task main_phase(uvm_phase phase);
      forever begin
         @(posedge vif.clk);	 
         if (!vif.rst) //ako nije reset
           begin
	         seq_item_port.get_next_item(req); //sekvenca posalje sequence item
	               `uvm_info(get_type_name(),
                   $sformatf("Driver sending...\n%s", req.sprint()),
                   UVM_HIGH)
                   vif.req1_cmd_in = req.cmd; //ulaz na dut-u = ovom polju
                   vif.req1_data_in = req.op1; //ulaz na dut-u = ovom polju
                   @(posedge vif.clk);
                   vif.req1_cmd_in = 0;
                   vif.req1_data_in=req.op2;
                   
	               seq_item_port.item_done(); //sekvenca nece poslati drugi sequence item, sve dok se ovo ne napise
           end
      end
   endtask : main_phase

endclass : calc_driver

`endif

