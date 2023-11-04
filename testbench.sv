module tb;
  reg in,clk;
  wire out;
  seqdetector sd0(in,clk,out);
  always #5 clk=~clk;
  initial
    begin
      clk=1'b0;
      #5
      in=1'b0;
      #10
      in=1'b1;
      #10
      in=1'b1;
      #10
      in=1'b0;
      #10
      in=1'b1;
      #10
      in=1'b1;
      #10
      in=1'b0;
      #5 $finish;
    end
   initial
     begin
       $dumpfile("seqdetector.vcd");
       $dumpvars(0,tb);
       $monitor($time," in=%b out=%b ",in,out);
     end
      endmodule