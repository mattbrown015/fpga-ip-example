`timescale 1ns / 1ps

module fpga_ip_example(
    input clk_in1_p,
    input clk_in1_n,
    output [7:0]gpio_io_o
    );

    logic s_axi_aresetn = 1;
    logic [31:0]m_axi_lite_ch1_awaddr;
    logic [2:0]m_axi_lite_ch1_awprot;
    logic m_axi_lite_ch1_awvalid;
    logic m_axi_lite_ch1_awready;
    logic [31:0]m_axi_lite_ch1_wdata;
    logic [3:0]m_axi_lite_ch1_wstrb;
    logic m_axi_lite_ch1_wvalid;
    logic m_axi_lite_ch1_wready;
    logic [1:0]m_axi_lite_ch1_bresp;
    logic m_axi_lite_ch1_bvalid;
    logic m_axi_lite_ch1_bready;
    logic done;
    logic [31:0]status;
    logic [8:0]s_axi_araddr = 0;
    logic s_axi_arvalid = 0;
    logic s_axi_rready = 0;

    clk_wiz_0 clk_wiz_0
    (
        // Clock out ports
        .clk_out1(clk_out1),      // output clk_out1
        // Clock in ports
        .clk_in1_p(clk_in1_p),    // input clk_in1_p
        .clk_in1_n(clk_in1_n)     // input clk_in1_n
    );

    axi_traffic_gen_0 axi_traffic_gen_0
    (
        .s_axi_aclk(clk_out1),                            // input wire s_axi_aclk
        .s_axi_aresetn(s_axi_aresetn),                    // input wire s_axi_aresetn
        .m_axi_lite_ch1_awaddr(m_axi_lite_ch1_awaddr),    // output wire [31 : 0] m_axi_lite_ch1_awaddr
        .m_axi_lite_ch1_awprot(m_axi_lite_ch1_awprot),    // output wire [2 : 0] m_axi_lite_ch1_awprot
        .m_axi_lite_ch1_awvalid(m_axi_lite_ch1_awvalid),  // output wire m_axi_lite_ch1_awvalid
        .m_axi_lite_ch1_awready(m_axi_lite_ch1_awready),  // input wire m_axi_lite_ch1_awready
        .m_axi_lite_ch1_wdata(m_axi_lite_ch1_wdata),      // output wire [31 : 0] m_axi_lite_ch1_wdata
        .m_axi_lite_ch1_wstrb(m_axi_lite_ch1_wstrb),      // output wire [3 : 0] m_axi_lite_ch1_wstrb
        .m_axi_lite_ch1_wvalid(m_axi_lite_ch1_wvalid),    // output wire m_axi_lite_ch1_wvalid
        .m_axi_lite_ch1_wready(m_axi_lite_ch1_wready),    // input wire m_axi_lite_ch1_wready
        .m_axi_lite_ch1_bresp(m_axi_lite_ch1_bresp),      // input wire [1 : 0] m_axi_lite_ch1_bresp
        .m_axi_lite_ch1_bvalid(m_axi_lite_ch1_bvalid),    // input wire m_axi_lite_ch1_bvalid
        .m_axi_lite_ch1_bready(m_axi_lite_ch1_bready),    // output wire m_axi_lite_ch1_bready
        .done(done),                                      // output wire done
        .status(status)                                   // output wire [31 : 0] status
    );

    axi_gpio_0 axi_gpio_0
    (
        .s_axi_aclk(clk_out1),                   // input wire s_axi_aclk
        .s_axi_aresetn(s_axi_aresetn),           // input wire s_axi_aresetn
        .s_axi_awaddr(m_axi_lite_ch1_awaddr),    // input wire [8 : 0] s_axi_awaddr
        .s_axi_awvalid(m_axi_lite_ch1_awvalid),  // input wire s_axi_awvalid
        .s_axi_awready(m_axi_lite_ch1_awready),  // output wire s_axi_awready
        .s_axi_wdata(m_axi_lite_ch1_wdata),      // input wire [31 : 0] s_axi_wdata
        .s_axi_wstrb(m_axi_lite_ch1_wstrb),      // input wire [3 : 0] s_axi_wstrb
        .s_axi_wvalid(m_axi_lite_ch1_wvalid),    // input wire s_axi_wvalid
        .s_axi_wready(m_axi_lite_ch1_wready),    // output wire s_axi_wready
        .s_axi_bresp(m_axi_lite_ch1_bresp),      // output wire [1 : 0] s_axi_bresp
        .s_axi_bvalid(m_axi_lite_ch1_bvalid),    // output wire s_axi_bvalid
        .s_axi_bready(m_axi_lite_ch1_bready),    // input wire s_axi_bready
        .s_axi_araddr(s_axi_araddr),             // input wire [8 : 0] s_axi_araddr
        .s_axi_arvalid(s_axi_arvalid),           // input wire s_axi_arvalid
        .s_axi_arready(s_axi_arready),           // output wire s_axi_arready
        .s_axi_rdata(s_axi_rdata),               // output wire [31 : 0] s_axi_rdata
        .s_axi_rresp(s_axi_rresp),               // output wire [1 : 0] s_axi_rresp
        .s_axi_rvalid(s_axi_rvalid),             // output wire s_axi_rvalid
        .s_axi_rready(s_axi_rready),             // input wire s_axi_rready
        .gpio_io_o(gpio_io_o)                    // output wire [7 : 0] gpio_io_o
    );
endmodule
