onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label rst /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/rst
add wave -noupdate /or1200_tb/CLOCK_50
add wave -noupdate -label or1200_ctrl/ex_insn -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/ex_insn
add wave -noupdate -label or1200_ctrl/id_insn -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/id_insn
add wave -noupdate -label or1200_ctrl/if_insn -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/if_insn
add wave -noupdate -label or1200_immu_top/itlb_spr_access /or1200_tb/or1200_top_inst/or1200_immu_top/itlb_spr_access
add wave -noupdate -label {itlb_tr_ram/mem[3]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_immu_top/or1200_immu_tlb/itlb_tr_ram/mem[3]}
add wave -noupdate -label or1200_immu_top/icpu_adr_i -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_immu_top/icpu_adr_i
add wave -noupdate -label or1200_immu_top/qmemimmu_adr_o -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_immu_top/qmemimmu_adr_o
add wave -noupdate -label or1200_immu_top/itlb_en_r -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_immu_top/itlb_en_r
add wave -noupdate -label or1200_immu_top/qmemimmu_cycstb_o /or1200_tb/or1200_top_inst/or1200_immu_top/qmemimmu_cycstb_o
add wave -noupdate -label or1200_immu_tlb/tlb_mr_ram_out -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_immu_top/or1200_immu_tlb/tlb_mr_ram_out
add wave -noupdate -label or1200_immu_tlb/tlb_tr_ram_out -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_immu_top/or1200_immu_tlb/tlb_tr_ram_out
add wave -noupdate -label or1200_qmem_top/qmemicpu_ack_o -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_qmem_top/qmemicpu_ack_o
add wave -noupdate -label or1200_except/id_exceptflags /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/id_exceptflags
add wave -noupdate -label or1200_qmem_top/qmemicpu_dat_o -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_qmem_top/qmemicpu_dat_o
add wave -noupdate -label or1200_except/ex_exceptflags /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/ex_exceptflags
add wave -noupdate -label or1200_immu_top/immu_en /or1200_tb/or1200_top_inst/or1200_immu_top/immu_en
add wave -noupdate -label or1200_except/sig_itlbmiss /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/sig_itlbmiss
add wave -noupdate -label or1200_immu_top/miss /or1200_tb/or1200_top_inst/or1200_immu_top/miss
add wave -noupdate -label {or1200_rf/rf_b/mem[1]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_b/mem[1]}
add wave -noupdate -label {or1200_rf/rf_b/mem[2]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_b/mem[2]}
add wave -noupdate -label {or1200_rf/rf_b/mem[3]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_b/mem[3]}
add wave -noupdate -label {or1200_rf/rf_a/mem[4]} -radix hexadecimal {/or1200_tb/or1200_top_inst/or1200_cpu/or1200_rf/rf_a/mem[4]}
add wave -noupdate -label or1200_lsu/dcpu_adr_o -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_adr_o
add wave -noupdate -label or1200_lsu/ex_lsu_op /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/ex_lsu_op
add wave -noupdate -label or1200_lsu/dcpu_cycstb_o /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_cycstb_o
add wave -noupdate -label or1200_lsu/dcpu_we_o /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_we_o
add wave -noupdate -label or1200_lsu/dcpu_sel_o /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_sel_o
add wave -noupdate -label or1200_lsu/dcpu_dat_o -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_dat_o
add wave -noupdate -label or1200_lsu/dcpu_dat_i -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_dat_i
add wave -noupdate -label or1200_lsu/dcpu_ack_i /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_ack_i
add wave -noupdate -label or1200_lsu/dcpu_rty_i /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_rty_i
add wave -noupdate -label or1200_lsu/lsu_stall /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/lsu_stall
add wave -noupdate -label or1200_ctrl/id_freeze /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/id_freeze
add wave -noupdate -label or1200_ctrl/ex_freeze /or1200_tb/or1200_top_inst/or1200_cpu/or1200_ctrl/ex_freeze
add wave -noupdate -label or1200_if/if_freeze /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/if_freeze
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
add wave -noupdate -label or1200_lsu/lsu_unstall /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/lsu_unstall
add wave -noupdate -label or1200_lsu/except_align /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/except_align
add wave -noupdate -label or1200_lsu/dcpu_err_i /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_err_i
add wave -noupdate -label or1200_lsu/dcpu_tag_i /or1200_tb/or1200_top_inst/or1200_cpu/or1200_lsu/dcpu_tag_i
add wave -noupdate -label or1200_qmem_top/qmem_do -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_qmem_top/qmem_do
add wave -noupdate -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_qmem_top/or1200_qmem_ram/addr
add wave -noupdate /or1200_tb/or1200_top_inst/or1200_qmem_top/or1200_qmem_ram/ce
add wave -noupdate /or1200_tb/or1200_top_inst/or1200_qmem_top/or1200_qmem_ram/oe
add wave -noupdate -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_qmem_top/or1200_qmem_ram/doq
add wave -noupdate -label or1200_qmem_top/qmemimmu_tag_o -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_qmem_top/qmemimmu_tag_o
add wave -noupdate -label or1200_qmem_top/qmemimmu_err_o -radix hexadecimal /or1200_tb/or1200_top_inst/or1200_qmem_top/qmemimmu_err_o
add wave -noupdate -label or1200_immu_top/icpu_tag_o /or1200_tb/or1200_top_inst/or1200_immu_top/icpu_tag_o
add wave -noupdate -label or1200_immu_top/icpu_err_o /or1200_tb/or1200_top_inst/or1200_immu_top/icpu_err_o
add wave -noupdate -label or1200_qmem_top/qmem_iack /or1200_tb/or1200_top_inst/or1200_qmem_top/qmem_iack
add wave -noupdate -label or1200_except/sig_ibuserr /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/sig_ibuserr
add wave -noupdate -label or1200_except/sig_immufault /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/sig_immufault
add wave -noupdate -label or1200_except/sig_dtlbmiss /or1200_tb/or1200_top_inst/or1200_cpu/or1200_except/sig_dtlbmiss
add wave -noupdate -label or1200_if/except_itlbmiss /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/except_itlbmiss
add wave -noupdate -label or1200_if/icpu_err_i /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/icpu_err_i
add wave -noupdate -label or1200_if/icpu_tag_i /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/icpu_tag_i
add wave -noupdate /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/saved
add wave -noupdate /or1200_tb/or1200_top_inst/or1200_cpu/or1200_if/no_more_dslot
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1497592 ps} 0}
configure wave -namecolwidth 242
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
WaveRestoreZoom {1366789 ps} {1550374 ps}
