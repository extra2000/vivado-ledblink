`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////////////////////
//234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567
//        1         2         3         4         5         6         7         8         9
//------------------------------------------------------------------------------------------------
// LED Blink module that blinks every 1.000000000000 second for 0.100000000000 second
//////////////////////////////////////////////////////////////////////////////////////////////////


module ledblink #(
  parameter reg [26:0] CLK_FREQ = 125000000,  // 125MHz
  parameter reg [23:0] T_100_MS = $ceil((0.100000000 * CLK_FREQ)),
  parameter reg [26:0] T_1000_MS = $ceil((1.000000000 * CLK_FREQ))
) (
  input clk_i,
  output reg led_o
);

  initial begin
    led_o = 0;
  end

  ////////////////////////////////////////////////////////////////////////////////////////////////
  // State Machine
  ////////////////////////////////////////////////////////////////////////////////////////////////
  reg [26:0] cnt = 0;
  reg [1:0] state = 0;

  always @(negedge clk_i) begin
    case(state)
      0: begin
        if (cnt >= T_100_MS) begin
          led_o <= 0;
          state <= state + 1;
          cnt <= cnt + 1;
        end else begin
          led_o <= 1;
          cnt <= cnt + 1;
        end
      end
      1: begin
        if (cnt >= T_1000_MS) begin
          led_o <= 1;
          state <= 0;
          cnt <= 1;
        end else begin
          cnt <= cnt + 1;
        end
      end
      default: begin
      end
    endcase
  end

endmodule
