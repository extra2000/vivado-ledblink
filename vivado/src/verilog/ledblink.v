`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// When using 25th bit value, the LED will blink every 0.54 seconds
// if the clock speed 125MHz. Calculation as follows:
//     Given clock speed clk_i = 125MHz (or 125*pow(10,6)Hz),
//     Blink frequency = 1 / ((pow(2,25) / (125*pow(10,6))) * 2)
//                     = 1.86Hz
//     Blink frequency in seconds = 1 / 1.86Hz
//                                = 0.54s
//////////////////////////////////////////////////////////////////////////////////


module ledblink(
        clk_i,
        led_o
    );
    input clk_i;
    output led_o;

    wire clk_i;

    reg [32:0] counter = 0;

    always @(posedge clk_i) begin
        counter <= counter + 1;
    end

    assign led_o = counter[25]; // using 25th bit value
endmodule
