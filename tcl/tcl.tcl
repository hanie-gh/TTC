create_project vivado D:/document/ipm_project/2018_10_03_ttctx2ttcrx/vivado -part xc7k325tffg900-2
set_property board_part xilinx.com:kc705:part0:1.5 [current_project]
set_property target_language VHDL [current_project]

add_files -norecurse {D:/document/ipm_project/2018_10_03_ttctx2ttcrx/ttc_encoder/ttcvx_emulation.vhd D:/document/ipm_project/2018_09_13_ttctx2ttcrx/ttc_encoder/d_ff.vhd D:/document/ipm_project/2018_09_13_ttctx2ttcrx/ttc_encoder/jk_ff.vhd D:/document/ipm_project/2018_09_13_ttctx2ttcrx/ttc_encoder/mmcm.vhdl D:/document/ipm_project/2018_09_13_ttctx2ttcrx/ttc_encoder/ttcvi_encoder.vhd D:/document/ipm_project/2018_09_13_ttctx2ttcrx/ttc_encoder/asyn_fifo.vhd D:/document/ipm_project/2018_09_13_ttctx2ttcrx/ttc_encoder/ttc_enc_wrapper.vhd D:/document/ipm_project/2018_09_13_ttctx2ttcrx/ttc_encoder/ttcvi_emulation.vhd}
update_compile_order -fileset sources_1
set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY none [get_runs synth_1]
add_files -fileset sim_1 -norecurse D:/document/ipm_project/2018_10_03_ttctx2ttcrx/tb/tb_ttc_enc.vhd
update_compile_order -fileset sim_1
launch_runs impl_1 -jobs 8