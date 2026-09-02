`timescale 1ns / 1ps

module fifo_tb;

    reg clk;
    reg rst;

    reg [7:0] data_in;
    reg wr_en;
    reg rd_en;

    wire [7:0] data_out;
    wire full;
    wire empty;

    // Instantiate the FIFO
    fifo uut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .data_out(data_out),
        .full(full),
        .empty(empty)
    );

    // Generate 10 ns clock
    always #5 clk = ~clk;

    initial begin

        // Initial conditions
        clk     = 0;
        rst     = 1;
        data_in = 8'd0;
        wr_en   = 0;
        rd_en   = 0;

        // -----------------------------
        // RESET
        // -----------------------------
        #20;
        rst = 0;

        // -----------------------------
        // WRITE 10
        // -----------------------------
        @(posedge clk);
        wr_en = 1;
        data_in = 8'd10;

        // WRITE 20
        @(posedge clk);
        data_in = 8'd20;

        // WRITE 30
        @(posedge clk);
        data_in = 8'd30;

        // WRITE 40
        @(posedge clk);
        data_in = 8'd40;

        // Stop writing
        @(posedge clk);
        wr_en = 0;

        // -----------------------------
        // READ DATA
        // -----------------------------
        @(posedge clk);
        rd_en = 1;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);

        rd_en = 0;

        // Finish simulation
        #20;
        $finish;

    end

endmodule
