onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /or1200_tb/CLOCK_50
add wave -noupdate -label or1200_ctrl/ex_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/ex_insn
add wave -noupdate -label or1200_ctrl/id_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/id_insn
add wave -noupdate -label or1200_ctrl/if_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/if_insn
add wave -noupdate -label or1200_ic_top/icqmem_adr_i -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icqmem_adr_i
add wave -noupdate -label or1200_ic_top/icqmem_ci_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icqmem_ci_i
add wave -noupdate -label or1200_ic_fsm/state /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_fsm/state
add wave -noupdate -label or1200_ic_top/icbiu_cyc_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_cyc_o
add wave -noupdate -label or1200_ic_top/icbiu_stb_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_stb_o
add wave -noupdate -label or1200_ic_top/icbiu_dat_i -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_dat_i
add wave -noupdate -label or1200_ic_top/icbiu_adr_o -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_adr_o
add wave -noupdate -label or1200_ic_top/icbiu_ack_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_ack_i
add wave -noupdate -label or1200_ic_top/icqmem_ack_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icqmem_ack_o
add wave -noupdate -label or1200_ic_top/icqmem_dat_o -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icqmem_dat_o
add wave -noupdate -label {ic_tag0/mem[20]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_tag/ic_tag0/mem[20]}
add wave -noupdate -label {ic_ram0/mem[80]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_ram/ic_ram0/mem[80]}
add wave -noupdate -label {ic_ram0/mem[81]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_ram/ic_ram0/mem[81]}
add wave -noupdate -label {ic_ram0/mem[82]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_ram/ic_ram0/mem[82]}
add wave -noupdate -label {ic_ram0/mem[83]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_ram/ic_ram0/mem[83]}
add wave -noupdate -label or1200_ic_top/tag_v /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/tag_v
add wave -noupdate -label or1200_ic_top/tagcomp_miss /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/tagcomp_miss
add wave -noupdate -label or1200_ic_top/icfsm_first_hit_ack /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icfsm_first_hit_ack
add wave -noupdate -label {rf_a/mem[1]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_rf/rf_a/mem[1]}
add wave -noupdate -label or1200_immu_top/itlb_ci /or1200_tb/or1200_sopc_inst/u_or1200/or1200_immu_top/itlb_ci
add wave -noupdate -label {rf_a/mem[2]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_rf/rf_a/mem[2]}
add wave -noupdate -label or1200_ic_top/ic_en /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/ic_en
add wave -noupdate -label or1200_ic_fsm/cache_inhibit /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_fsm/cache_inhibit
add wave -noupdate -label or1200_ic_fsm/tagcomp_miss /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_fsm/tagcomp_miss
add wave -noupdate -label {ic_tag0/mem[0]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_tag/ic_tag0/mem[0]}
add wave -noupdate -label or1200_ic_top/icbiu_cab_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/icbiu_cab_o
add wave -noupdate -label {ic_tag0/mem[14]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_tag/ic_tag0/mem[14]}
add wave -noupdate -label or1200_immu_top/immu_en /or1200_tb/or1200_sopc_inst/u_or1200/or1200_immu_top/immu_en
add wave -noupdate -label or1200_immu_top/qmemimmu_ci_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_immu_top/qmemimmu_ci_o
add wave -noupdate -label {itlb_tr_ram/mem[0]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_immu_top/or1200_immu_tlb/itlb_tr_ram/mem[0]}
add wave -noupdate -label or1200_ic_fsm/biu_read /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_fsm/biu_read
add wave -noupdate -label or1200_ic_fsm/hitmiss_eval /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_fsm/hitmiss_eval
add wave -noupdate -label or1200_ic_fsm/load /or1200_tb/or1200_sopc_inst/u_or1200/or1200_ic_top/or1200_ic_fsm/load
add wave -noupdate -label or1200_immu_top/qmemimmu_cycstb_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_immu_top/qmemimmu_cycstb_o
add wave -noupdate -label or1200_cpu/icpu_cycstb_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/icpu_cycstb_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {314119593 ps} 0}
configure wave -namecolwidth 187
configure wave -valuecolwidth 76
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
WaveRestoreZoom {313955257 ps} {314606561 ps}
