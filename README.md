# FIFO Controller using Verilog

## Overview

Designed and verified an 8-bit synchronous FIFO controller using Verilog HDL. The design provides reliable first-in-first-out data storage with controlled read and write operations.

## Features

- 8-bit data width
- 16-entry FIFO memory
- Synchronous operation
- Read and write enable control
- Reset functionality
- Full and empty status flags
- Read and write pointer management
- Overflow and underflow prevention

## Design

The FIFO consists of a memory array, read pointer, write pointer, and occupancy counter. Data is written when `wr_en` is asserted and the FIFO is not full. Data is read when `rd_en` is asserted and the FIFO is not empty.

## Verification

A Verilog testbench was developed to verify reset, write, read, data ordering, and FIFO status behavior.

Simulation was performed using Vivado Simulator.

## Implementation Results

The design was successfully synthesized and implemented for the Basys 3 / Artix-7 FPGA platform.

### Timing

- Worst Negative Slack (WNS): **5.885 ns**
- Total Negative Slack (TNS): **0.000 ns**
- Failing Endpoints: **0**

### Power

- Total On-Chip Power: **1.449 W**
- Dynamic Power: **1.375 W**
- Static Power: **0.074 W**

### FPGA Resources

- LUTs: **19**
- Flip-Flops: **21**
- BRAM: **0**
- DSP: **0**

The FPGA bitstream was successfully generated.

## Project Structure

```text
├── fifo.v
├── fifo_tb.v
├── fifo_timing.xdc
└── results/
    ├── simulation.png
    ├── timing_report.png
    ├── power_report.png
    └── bitstream_generated.png
