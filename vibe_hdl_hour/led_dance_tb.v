`timescale 1ns/1ps

module led_dance_tb;
    reg clk;
    reg rst_n;
    wire [7:0] led;

    led_dance #(
        .DIVIDER(4)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .led(led)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk; // 100MHz 가상 클럭

    initial begin
        rst_n = 1'b0;
        #20;
        rst_n = 1'b1;

        #400;
        $finish;
    end

    initial begin
        $dumpfile("led_dance.vcd");
        $dumpvars(0, led_dance_tb);
        $display("time(ns)\tled");
        $monitor("%0t\t%b", $time, led);
    end
endmodule
