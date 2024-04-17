module testbench();

reg clk;
reg reset;

wire [7:0] triangle;
wire count_down;

modtriangle mdtrian(.clk(clk), .reset(reset), .triangle(triangle), .count_down(count_down));

initial
begin
    $dumpfile("bench.vcd");
    $dumpvars(0,testbench);

    $display("starting testbench!!!!");
    
    $monitor(clk,, triangle,, count_down); //reset,, clk,, CLC,,???
  
        clk <= 0; 
        repeat (3000) 
            
        begin
                #10;
                clk <= 1;
                #10;
                clk <= 0; 
        end


    $display("finished OK!");
    //$finish;
end

initial
begin
  reset <= 1;
  #100;
  reset <= 0;
end

endmodule