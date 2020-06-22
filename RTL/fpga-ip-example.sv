`timescale 1ns / 1ps

module fpga_ip_example(
    input clk_in1_p,
    input clk_in1_n
    );

    clk_wiz_0 clk_wiz_0
    (
        // Clock out ports
        .clk_out1(clk_out1),      // output clk_out1
        // Clock in ports
        .clk_in1_p(clk_in1_p),    // input clk_in1_p
        .clk_in1_n(clk_in1_n)     // input clk_in1_n
    );
endmodule
