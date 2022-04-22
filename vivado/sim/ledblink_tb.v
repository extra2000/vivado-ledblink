`timescale 1ns / 1ps

module ledblink_tb;
    reg r_clock = 1'b0;

    wire led_drive_w;

    ledblink UUT(
        .clk_i(r_clock),
        .led_o(led_drive_w)
    );

    // Delaying 8ns before inverting r_clock to simulate 125MHz clock.
    always #8 r_clock <= !r_clock;
endmodule
