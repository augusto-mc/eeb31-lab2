# Copyright (C) 2023  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: lab1.tcl
# Generated on: Sat Mar  9 16:19:24 2024

# Load Quartus Prime Tcl Project package
package require ::quartus::project
package require ::quartus::flow

project_new -overwrite -revision lab1 lab1

set_global_assignment -name FAMILY "MAX 10"
set_global_assignment -name DEVICE 10M50DAF484C7G
set_global_assignment -name TOP_LEVEL_ENTITY lab1
set_global_assignment -name ORIGINAL_QUARTUS_VERSION 23.1STD.0
set_global_assignment -name PROJECT_CREATION_TIME_DATE "14:58:09  MARCH 09, 2024"
set_global_assignment -name LAST_QUARTUS_VERSION "23.1std.0 Lite Edition"
set_global_assignment -name VHDL_FILE somador.vhdl
set_global_assignment -name VHDL_FILE somador4.vhdl
set_global_assignment -name VHDL_FILE inversor.vhdl
set_global_assignment -name VHDL_FILE inversor4.vhdl
set_global_assignment -name VHDL_FILE sumsub.vhdl
set_global_assignment -name VHDL_FILE hex_to_7.vhdl
set_global_assignment -name VHDL_FILE lab1.vhdl
set_global_assignment -name VHDL_FILE test_somador.vhdl
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
set_global_assignment -name EDA_SIMULATION_TOOL "Questa Intel FPGA (VHDL)"
set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

export_assignments

project_close
