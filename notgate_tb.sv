module notgate_tb;
  logic a;
  logic b;
  
  // instantiating the module to map connections
  notgate notg( .a(a), .b(b) );
  
  initial
    begin
      a = 1'b0;

      #5
      a = 1'b1;     
      
      #5
      a = 1'b0;

    end
  
    initial
    begin
      $display("                Tempo   Entrada    Saída");
      $display("                            a         b");
      $display("                ====   ==========  =======");
      $monitor($time,"     %b          %b     ", a, b);
    end
  
endmodule

