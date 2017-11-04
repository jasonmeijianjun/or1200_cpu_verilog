onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label rst /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/rst
add wave -noupdate /or1200_tb/CLOCK_50
add wave -noupdate -label or1200_ctrl/ex_insn -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/ex_insn
add wave -noupdate -label or1200_ctrl/id_insn -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/id_insn
add wave -noupdate -label {or1200_rf/rf_a/mem[4]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_a/mem[4]}
add wave -noupdate -label or1200_rf/dataa -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/dataa
add wave -noupdate -label or1200_rf/dataw -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/dataw
add wave -noupdate -label or1200_operandmuxes/ex_forw -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_operandmuxes/ex_forw
add wave -noupdate -label or1200_operandmuxes/sel_a /or1200_tb/or1200_top_inst/or1200_cpu/or1200_operandmuxes/sel_a
add wave -noupdate -label or1200_alu/a -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_alu/a
add wave -noupdate -label or1200_genpc/icpu_cycstb_o /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/icpu_cycstb_o
add wave -noupdate -label or1200_genpc/icpu_adr_o -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/icpu_adr_o
add wave -noupdate -label or1200_if/icpu_ack_i /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/icpu_ack_i
add wave -noupdate -label or1200_if/icpu_dat_i -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/icpu_dat_i
add wave -noupdate -label or1200_ctrl/if_insn -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/if_insn
add wave -noupdate -label or1200_genpc/pc -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/pc
add wave -noupdate -label or1200_genpc/pcreg_default -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/pcreg_default
add wave -noupdate -label or1200_genpc/pcreg -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/pcreg
add wave -noupdate -label {or1200_rf/rf_b/mem[1]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_b/mem[1]}
add wave -noupdate -label {or1200_rf/rf_b/mem[2]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_b/mem[2]}
add wave -noupdate -label or1200_rf/rda -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rda
add wave -noupdate -label or1200_genpc/pcreg_select /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/pcreg_select
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {419169 ps} 0}
configure wave -namecolwidth 202
configure wave -valuecolwidth 60
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
WaveRestoreZoom {382777 ps} {573751 ps}
