set_property SRC_FILE_INFO {cfile:c:/Users/yenna/sih/sih.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc rfile:../../../../../sih.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc id:1 order:EARLY used_in_board:yes scoped_inst:inst prop_thru_buffer:yes} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/yenna/sih/sih.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc rfile:../../../../../sih.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc id:2 order:EARLY scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/yenna/sih/sih.runs/design_1_clk_wiz_0_0_synth_1/dont_touch.xdc rfile:../../../dont_touch.xdc id:3} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PART_PIN sys_clk [get_ports clk_in1]
set_property src_info {type:SCOPED_XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]
set_property src_info {type:SCOPED_XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name clk_in1 [get_ports clk_in1]
current_instance inst
set_property src_info {type:SCOPED_XDC file:2 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property PHASESHIFT_MODE WAVEFORM [get_cells mmcm_adv_inst]
current_instance
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clkfbout_design_1_clk_wiz_0_0 -source [get_pins inst/mmcm_adv_inst/CLKIN1] -multiply_by 1 -add -master_clock [get_clocks clk_in1] [get_pins inst/mmcm_adv_inst/CLKFBOUT]
set_property src_info {type:PI file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name clk_out1_design_1_clk_wiz_0_0 -source [get_pins inst/mmcm_adv_inst/CLKIN1] -multiply_by 1 -add -master_clock [get_clocks clk_in1] [get_pins inst/mmcm_adv_inst/CLKOUT0]
set_property src_info {type:XDC file:3 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property KEEP_HIERARCHY SOFT [get_cells inst]
set_property src_info {type:TCL file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
set_property KEEP true [get_nets clk_in1]
