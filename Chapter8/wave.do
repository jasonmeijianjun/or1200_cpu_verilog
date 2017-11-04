onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label rst /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/rst
add wave -noupdate /or1200_tb/CLOCK_50
add wave -noupdate -label or1200_ctrl/ex_insn -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/ex_insn
add wave -noupdate -label or1200_ctrl/id_insn -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/id_insn
add wave -noupdate -label or1200_ctrl/if_insn -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/if_insn
add wave -noupdate -label or1200_mult_mac/mac_r -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/mac_r
add wave -noupdate -label or1200_mult_mac/mul_prod_r -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/mul_prod_r
add wave -noupdate -label or1200_ctrl/id_freeze /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/id_freeze
add wave -noupdate -label or1200_ctrl/ex_freeze /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/ex_freeze
add wave -noupdate -label or1200_if/if_freeze /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/if_freeze
add wave -noupdate -label or1200_mult_mac/mul_stall_count /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/mul_stall_count
add wave -noupdate -label or1200_mult_mac/mult_mac_stall /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/mult_mac_stall
add wave -noupdate -label or1200_mult_mac/x -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/x
add wave -noupdate -label or1200_mult_mac/y -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/y
add wave -noupdate -label or1200_genpc/icpu_adr_o -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/icpu_adr_o
add wave -noupdate -label or1200_genpc/icpu_cycstb_o /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/icpu_cycstb_o
add wave -noupdate -label or1200_ctrl/rfe /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/rfe
add wave -noupdate -label or1200_except/epcr -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/epcr
add wave -noupdate -label or1200_if/icpu_ack_i /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/icpu_ack_i
add wave -noupdate -label or1200_if/if_stall /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/if_stall
add wave -noupdate -label or1200_ctrl/if_flushpipe /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/if_flushpipe
add wave -noupdate -label or1200_except/state /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/state
add wave -noupdate -label or1200_ctrl/multicycle /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/multicycle
add wave -noupdate -label or1200_ctrl/id_flushpipe /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/id_flushpipe
add wave -noupdate -label {or1200_rf/rf_b/mem[3]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_b/mem[3]}
add wave -noupdate -label or1200_mult_mac/mac_r -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/mac_r
add wave -noupdate -label or1200_ctrl/ex_flushpipe /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/ex_flushpipe
add wave -noupdate -label or1200_ctrl/wb_flushpipe /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/wb_flushpipe
add wave -noupdate -label or1200_except/except_flushpipe /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/except_flushpipe
add wave -noupdate -label or1200_if/if_bypass /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/if_bypass
add wave -noupdate -label or1200_except/sig_syscall /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/sig_syscall
add wave -noupdate -label or1200_sprs/to_sr -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_sprs/to_sr
add wave -noupdate -label or1200_except/except_trig -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/except_trig
add wave -noupdate -label or1200_genpc/icpu_rty_i /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/icpu_rty_i
add wave -noupdate -label or1200_genpc/ex_branch_taken /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/ex_branch_taken
add wave -noupdate -label or1200_if/no_more_dslot /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/no_more_dslot
add wave -noupdate -label {or1200_rf/rf_a/mem[4]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_a/mem[4]}
add wave -noupdate -label or1200_rf/dataa -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/dataa
add wave -noupdate -label or1200_if/addr_saved -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/addr_saved
add wave -noupdate -label or1200_immu_top/icpu_adr_default -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_immu_top/icpu_adr_default
add wave -noupdate -label or1200_if/insn_saved -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/insn_saved
add wave -noupdate -label or1200_rf/dataw -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/dataw
add wave -noupdate -label or1200_operandmuxes/ex_forw -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_operandmuxes/ex_forw
add wave -noupdate -label or1200_operandmuxes/sel_a /or1200_tb/or1200_top_inst/or1200_cpu/or1200_operandmuxes/sel_a
add wave -noupdate -label or1200_alu/a -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_alu/a
add wave -noupdate -label or1200_if/icpu_dat_i -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/icpu_dat_i
add wave -noupdate -label or1200_genpc/pc -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/pc
add wave -noupdate -label or1200_genpc/pcreg_default -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/pcreg_default
add wave -noupdate -label or1200_genpc/pcreg -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/pcreg
add wave -noupdate -label {or1200_rf/rf_b/mem[1]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_b/mem[1]}
add wave -noupdate -label {or1200_rf/rf_b/mem[2]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_b/mem[2]}
add wave -noupdate -label or1200_rf/rda -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rda
add wave -noupdate -label or1200_genpc/pcreg_select /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/pcreg_select
add wave -noupdate -label or1200_freeze/multicycle /or1200_tb/or1200_top_inst/or1200_cpu/or1200_freeze/multicycle
add wave -noupdate -label or1200_sprs/spr_cs -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_sprs/spr_cs
add wave -noupdate -label or1200_sprs/spr_we /or1200_tb/or1200_top_inst/or1200_cpu/or1200_sprs/spr_we
add wave -noupdate -label or1200_sprs/addrbase -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_sprs/addrbase
add wave -noupdate -label or1200_sprs/addrofs -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_sprs/addrofs
add wave -noupdate -label or1200_sprs/spr_addr -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_sprs/spr_addr
add wave -noupdate -label or1200_rf/spr_cs /or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/spr_cs
add wave -noupdate -label or1200_genpc/icpu_adr_i -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_genpc/icpu_adr_i
add wave -noupdate -label or1200_if/genpc_refetch -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/genpc_refetch
add wave -noupdate /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/mac_op_r1
add wave -noupdate /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/mac_op_r2
add wave -noupdate /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/mac_op_r3
add wave -noupdate /or1200_tb/or1200_top_inst/or1200_cpu/or1200_mult_mac/mac_op
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1095624 ps} 0}
configure wave -namecolwidth 208
configure wave -valuecolwidth 40
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
WaveRestoreZoom {929468 ps} {1137067 ps}
