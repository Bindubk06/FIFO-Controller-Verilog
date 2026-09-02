## =========================================================
## BASYS 3 - FIFO CONTROLLER PIN CONSTRAINTS
## =========================================================

## CLOCK - 100 MHz onboard clock
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]


## =========================================================
## DATA INPUT - SWITCHES SW0 to SW7
## =========================================================

set_property PACKAGE_PIN V17 [get_ports {data_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[0]}]

set_property PACKAGE_PIN V16 [get_ports {data_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[1]}]

set_property PACKAGE_PIN W16 [get_ports {data_in[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[2]}]

set_property PACKAGE_PIN W17 [get_ports {data_in[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[3]}]

set_property PACKAGE_PIN W15 [get_ports {data_in[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[4]}]

set_property PACKAGE_PIN V15 [get_ports {data_in[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[5]}]

set_property PACKAGE_PIN W14 [get_ports {data_in[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[6]}]

set_property PACKAGE_PIN W13 [get_ports {data_in[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[7]}]


## =========================================================
## DATA OUTPUT - LEDs LD0 to LD7
## =========================================================

set_property PACKAGE_PIN U16 [get_ports {data_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[0]}]

set_property PACKAGE_PIN E19 [get_ports {data_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[1]}]

set_property PACKAGE_PIN U19 [get_ports {data_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[2]}]

set_property PACKAGE_PIN V19 [get_ports {data_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[3]}]

set_property PACKAGE_PIN W18 [get_ports {data_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[4]}]

set_property PACKAGE_PIN U15 [get_ports {data_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[5]}]

set_property PACKAGE_PIN U14 [get_ports {data_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[6]}]

set_property PACKAGE_PIN V14 [get_ports {data_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[7]}]


## =========================================================
## CONTROL BUTTONS
## =========================================================

## Center button = RESET
set_property PACKAGE_PIN U18 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

## Up button = WRITE ENABLE
set_property PACKAGE_PIN T18 [get_ports wr_en]
set_property IOSTANDARD LVCMOS33 [get_ports wr_en]

## Down button = READ ENABLE
set_property PACKAGE_PIN U17 [get_ports rd_en]
set_property IOSTANDARD LVCMOS33 [get_ports rd_en]


## =========================================================
## FIFO STATUS
## =========================================================

## Left button = EMPTY
set_property PACKAGE_PIN W19 [get_ports empty]
set_property IOSTANDARD LVCMOS33 [get_ports empty]

## Right button = FULL
set_property PACKAGE_PIN T17 [get_ports full]
set_property IOSTANDARD LVCMOS33 [get_ports full]