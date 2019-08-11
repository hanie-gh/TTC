# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/vivado/encoder/encoder.cache/wt [current_project]
set_property parent.project_path C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/vivado/encoder/encoder.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part xilinx.com:kc705:part0:1.5 [current_project]
set_property ip_output_repo c:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/vivado/encoder/encoder.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_decoder/TTC_hamming_decoder_alme.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_decoder/cdr2a_b_clk.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_encoder/d_ff.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_encoder/jk_ff.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_encoder/mmcm.vhdl
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_decoder/pll_160MHz.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_encoder/ttc_data_generation.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_decoder/ttc_decoder_core.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_encoder/ttc_enc_wrapper.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_encoder/ttc_encoder_data_gen.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_decoder/ttc_fmc_wrapper_xilinx.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_encoder/ttcvi_emulation.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_encoder/ttcvi_encoder.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc_encoder/ttcvx_emulation.vhd
  C:/Users/Amoozegar/Desktop/hgh/project/2018_11_21_ttctx2ttcrx/ttc/top.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7k325tffg900-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]