`ifndef CALC_SEQ_ITEM_SV
 `define CALC_SEQ_ITEM_SV

class calc_seq_item extends uvm_sequence_item;
   `uvm_object_utils_begin(calc_seq_item)
   `uvm_object_utils_end

	rand logic[31:0] op1;
	rand logic [31:0] op2;
	rand logic [3:0] cmd;
   
    constraint op1_constr {op1 < 5;};
    constraint op2_constr {op2 < 5;};
    constraint cmd_constr {cmd == 1;};
    
   function new (string name = "calc_seq_item");
      super.new(name);
   endfunction // new

endclass : calc_seq_item

`endif
