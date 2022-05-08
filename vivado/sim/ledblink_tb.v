`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////////////////////
//234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567
//        1         2         3         4         5         6         7         8         9
//------------------------------------------------------------------------------------------------
// LED Blink test bench
//////////////////////////////////////////////////////////////////////////////////////////////////


module ledblink_tb #(
  // delay 4ns (8ns for a complete oscillation) to simulate Arty Z7-20 125MHz system clock
  parameter reg [2:0] T_DELAY_NS = 4
)();

  reg sysclock = 0;
  wire led;

  ledblink ledblink_inst(
    .clk_i(sysclock),
    .led_o(led)
  );

  always #T_DELAY_NS sysclock <= ~sysclock;

endmodule
