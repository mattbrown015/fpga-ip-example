`timescale 1ns / 1ps

module fpga_ip_example_tb();
    localparam osc_300_period = 3.333;

    logic osc_300_p;
    logic osc_300_n;
    logic reset;
    logic [7:0]gpio_io_o;

    initial
    begin
        $display ("fpga_ip_example_tb start");

        reset = 1;
        #10ns  // arbitrary delay to get started

        $display ("release reset and check GPIO reset");
        reset = 0;

        if (gpio_io_o != 'h00)
        begin
            $display ("gpio_io_o != 'h00");
        end

        $display ("allow ATG to write to GPIO");
        #220
        if (gpio_io_o != 'h01)
        begin
            $display ("gpio_io_o != 'h01");
        end

        $display ("Assert and release reset and check GPIO reset");
        #1
        reset = 1;
        #1
        reset = 0;

        #100
        if (gpio_io_o != 'h00)
        begin
            $display ("gpio_io_o != 'h00");
        end

        $display ("allow STG to write more values to GPIO");
        #100
        if (gpio_io_o != 'h01)
        begin
            $display ("gpio_io_o != 'h01");
        end

        #100
        if (gpio_io_o != 'h02)
        begin
            $display ("gpio_io_o != 'h02");
        end

        $display ("fpga_ip_example_tb finish");
    end

    always
    begin
        osc_300_p = 1'b0;
        osc_300_n = 1'b1;
        #(osc_300_period / 2) osc_300_p = 1'b1;
        osc_300_n = 1'b0;
        #(osc_300_period / 2);
    end

    fpga_ip_example fpga_ip_example
    (
        osc_300_p,
        osc_300_n,
        reset,
        gpio_io_o
    );
endmodule
