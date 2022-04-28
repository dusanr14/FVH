`ifndef CALC_SEQ_ITEM_SV
 `define CALC_SEQ_ITEM_SV

class calc_seq_item extends uvm_sequence_item;


   `uvm_object_utils_begin(calc_seq_item)
        `uvm_field_int(dodatna_promenljiva, UVM_DEFAULT)
        `uvm_field_int(broj_porta, UVM_DEFAULT)
        `uvm_field_int(op1_1, UVM_DEFAULT)
        `uvm_field_int(op2_1, UVM_DEFAULT)
        `uvm_field_int(cmd_1, UVM_DEFAULT)
        `uvm_field_int(op1_2, UVM_DEFAULT)
        `uvm_field_int(op2_2,  UVM_DEFAULT)
        `uvm_field_int(cmd_2, UVM_DEFAULT)
        `uvm_field_int(op1_3, UVM_DEFAULT)
        `uvm_field_int(op2_3, UVM_DEFAULT)
        `uvm_field_int(cmd_3, UVM_DEFAULT)
        `uvm_field_int(op1_4, UVM_DEFAULT)
        `uvm_field_int(op2_4, UVM_DEFAULT)
        `uvm_field_int(cmd_4, UVM_DEFAULT)
   `uvm_object_utils_end
     
    rand  logic [32 - 1 : 0] dodatna_promenljiva;
    rand int broj_porta;
   
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
    
    constraint broj_porta_constraint { broj_porta inside { [1 : 4] }; }
    
   function new (string name = "calc_seq_item");
      super.new(name);
   endfunction // new

endclass : calc_seq_item

`endif
