`timescale 1ns/1ps

module led_dance #(
    parameter integer DIVIDER = 4
) (
    input  wire       clk,
    input  wire       rst_n,
    output reg  [7:0] led
);
    reg [31:0] div_cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            div_cnt <= 32'd0;
            led     <= 8'b0000_0001;
        end else begin
            if (div_cnt == DIVIDER - 1) begin
                div_cnt <= 32'd0;
                led <= {led[6:0], led[7]};
            end else begin
                div_cnt <= div_cnt + 1'b1;
            end
        end
    end
endmodule
