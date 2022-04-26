`ifndef CALC_SEQ_ITEM_SV
 `define CALC_SEQ_ITEM_SV

class calc_seq_item extends uvm_sequence_item;
   
   `uvm_object_utils_begin(calc_seq_item)
   `uvm_object_utils_end

       
    rand logic [32 - 1 : 0] op1_1;
    rand logic [32 - 1 : 0] op2_1;
    rand logic [4 - 1 : 0]  cmd_1;
    
    rand logic [32 - 1 : 0] op1_2;
    rand logic [32 - 1 : 0] op2_2;
    rand logic [4 - 1 : 0]  cmd_2;
    
    rand logic [32 - 1 : 0] op1_3;
    rand logic [32 - 1 : 0] op2_3;
    rand logic [4 - 1 : 0]  cmd_3;
    
    rand logic [32 - 1 : 0] op1_4;
    rand logic [32 - 1 : 0] op2_4;
    rand logic [4 - 1 : 0]  cmd_4;
    
    
   function new (string name = "calc_seq_item");
      super.new(name);
   endfunction // new

endclass : calc_seq_item

`endif
