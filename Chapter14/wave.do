onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label rst_i /or1200_tb/or1200_sopc_inst/u_or1200/rst_i
add wave -noupdate /or1200_tb/CLOCK_50
add wave -noupdate -label or1200_ctrl/ex_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/ex_insn
add wave -noupdate -label or1200_ctrl/id_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/id_insn
add wave -noupdate -label or1200_ctrl/if_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/if_insn
add wave -noupdate -label {dc_tag0/mem[0]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_tag/dc_tag0/mem[0]}
add wave -noupdate -label or1200_dc_top/dcsb_cyc_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcsb_cyc_o
add wave -noupdate -label or1200_dc_top/dcsb_stb_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcsb_stb_o
add wave -noupdate -label or1200_dc_top/dcsb_we_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcsb_we_o
add wave -noupdate -label or1200_dc_top/dcsb_ack_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcsb_ack_i
add wave -noupdate -label {ram0/mem[0]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_ram0/ram0/mem[0]}
add wave -noupdate -label or1200_lsu/lsu_stall /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_lsu/lsu_stall
add wave -noupdate -label or1200_cpu/dcpu_ack_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/dcpu_ack_i
add wave -noupdate -label or1200_cpu/icpu_adr_o -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/icpu_adr_o
add wave -noupdate -label or1200_cpu/sb_en /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/sb_en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {227398 ps} 0}
configure wave -namecolwidth 180
configure wave -valuecolwidth 51
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1010857 ps}
