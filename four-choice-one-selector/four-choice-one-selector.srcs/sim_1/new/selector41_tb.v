`timescale 1 ns/10 ps
module selector41_tb;  // Test files, the input and control signals of corresponding program files are given in the way of programming files in the simulation software.  
reg [0:3] data_in_tb;
  wire data_out_tb;
  reg [1:0] select_tb;
  selector41 t1(data_in_tb,data_out_tb,select_tb);  // Call the program file that needs to be tested. The variables given in parentheses are in the same order as the variables defined in the calling program.
  initial begin
    select_tb=0;
    data_in_tb=0;
    #20 data_in_tb={$random}%16;	// Generate a binary random number of 0-15 as input signal
    #50 select_tb=0;
    #50 select_tb=1;
    #50 select_tb=2;
    #50 select_tb=3;
    #50 $finish();
  end
endmodule
