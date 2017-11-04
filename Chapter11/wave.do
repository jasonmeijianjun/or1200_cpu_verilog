onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /or1200_tb/CLOCK_50
add wave -noupdate -label or1200_ctrl/ex_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/ex_insn
add wave -noupdate -label or1200_ctrl/id_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/id_insn
add wave -noupdate -label or1200_ctrl/if_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/if_insn
add wave -noupdate -label {rf_a/mem[1]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_rf/rf_a/mem[1]}
add wave -noupdate -label or1200_freeze/if_stall /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_freeze/if_stall
add wave -noupdate -label or1200_freeze/ex_freeze /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_freeze/ex_freeze
add wave -noupdate -label or1200_freeze/id_freeze /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_freeze/id_freeze
add wave -noupdate -label or1200_freeze/if_freeze /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_freeze/if_freeze
add wave -noupdate -label or1200_freeze/icpu_ack_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_freeze/icpu_ack_i
add wave -noupdate -label or1200_ic_top/icbiu_ack_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_ack_i
add wave -noupdate -label or1200_ic_top/icbiu_adr_o -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_adr_o
add wave -noupdate -label or1200_ic_top/icbiu_cab_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_cab_o
add wave -noupdate -label or1200_ic_top/icbiu_cyc_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_cyc_o
add wave -noupdate -label or1200_ic_top/icbiu_dat_i -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_dat_i
add wave -noupdate -label or1200_ic_top/icbiu_stb_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_stb_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {931041 ps} 0}
configure wave -namecolwidth 169
configure wave -valuecolwidth 47
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
WaveRestoreZoom {875568 ps} {1210650 ps}
