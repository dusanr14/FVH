`ifndef CALC_SIMPLE_SEQ_SV
 `define CALC_SIMPLE_SEQ_SV


class calc_simple_seq extends calc_base_seq;

   `uvm_object_utils (calc_simple_seq)
   
    
   virtual task body();
    calc_seq_item calc_it;
    calc_it = calc_seq_item::type_id::create("calc_it");
     for ( int i = 0; i < 15; i++) begin
        // prvi korak kreiranje transakcije
        
        // drugi korak ? start
        start_item(calc_it);
        // treci korak priprema
        // po potrebi moguce prosiriti sa npr. inline ogranicenjima
        assert (calc_it .randomize() with (calc_it.op1_1 < 5));
        // cetvrti korak ? finish
        finish_item(calc_it) ;
    end
      
   endtask : body

  
    
      function new(string name = "calc_simple_seq");
      super.new(name);
   endfunction
   
    endclass : calc_simple_seq

`endif
