`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2024 09:54:18 AM
// Design Name: 
// Module Name: selector41
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module selector41(data_in, data_out, select);
  input [3:0] data_in;  // Define input
  input [1:0] select;   // Define input select control signal
  output data_out;      // Define output

  reg data_out;         // The output is defined as a register variable to represent the specified signal in always block statement

  always @(data_in or select) begin  // Level trigger (execution of statements in the always block when the input signal level changes)
    case(select)  // According to two selected control signals, the selected input signal is sent to the output terminal.
      2'b00: data_out = data_in[0];
      2'b01: data_out = data_in[1];
      2'b10: data_out = data_in[2];
      2'b11: data_out = data_in[3];
      default: data_out = 1'bx;
    endcase
  end
endmodule
