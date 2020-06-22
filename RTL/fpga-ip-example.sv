`timescale 1ns / 1ps

module fpga_ip_example(
    input clk_in1_p,
    input clk_in1_n
    );

    logic s_axi_aresetn = 1;
    logic [31:0]m_axi_lite_ch1_awaddr;
    logic [2:0]m_axi_lite_ch1_awprot;
    logic m_axi_lite_ch1_awvalid;
    logic m_axi_lite_ch1_awready = 0;
    logic [31:0]m_axi_lite_ch1_wdata;
    logic [3:0]m_axi_lite_ch1_wstrb;
    logic m_axi_lite_ch1_wvalid;
    logic m_axi_lite_ch1_wready = 0;
    logic [1:0]m_axi_lite_ch1_bresp = 0;
    logic m_axi_lite_ch1_bvalid = 0;
    logic m_axi_lite_ch1_bready;
    logic done;
    logic [31:0]status;

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
endmodule
