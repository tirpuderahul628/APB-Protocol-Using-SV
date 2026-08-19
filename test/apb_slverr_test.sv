class apb_slverr_test extends apb_generator;

apb_transaction tr;

function new(mailbox gdmbx);
         super.new(gdmbx);
      endfunction

  task run(); 
 tr =new();
   
 repeat(2) begin


tr.randomize() with {tr.paddr== {32{1'b1}};};
$display("************************************************");
$display("TIME=%0t Generator %0p\n",$time,tr);
 tr.display ("GEN");
 gdmbx.put(tr);
 @(e1);
 #1;
 end
 endtask : run
 endclass

