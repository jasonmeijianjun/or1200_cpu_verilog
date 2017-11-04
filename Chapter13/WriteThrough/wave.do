onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label rst_i /or1200_tb/or1200_sopc_inst/u_or1200/rst_i
add wave -noupdate /or1200_tb/CLOCK_50
add wave -noupdate -label or1200_ctrl/ex_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/ex_insn
add wave -noupdate -label or1200_ctrl/id_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/id_insn
add wave -noupdate -label or1200_ctrl/if_insn -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_ctrl/if_insn
add wave -noupdate -label {dc_tag0/mem[0]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_tag/dc_tag0/mem[0]}
add wave -noupdate -label or1200_freeze/ex_freeze /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_freeze/ex_freeze
add wave -noupdate -label or1200_freeze/id_freeze /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_freeze/id_freeze
add wave -noupdate -label or1200_freeze/if_freeze /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_freeze/if_freeze
add wave -noupdate -label or1200_dc_top/dcsb_cyc_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcsb_cyc_o
add wave -noupdate -label or1200_dc_top/dcsb_stb_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcsb_stb_o
add wave -noupdate -label or1200_dc_top/dcsb_we_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcsb_we_o
add wave -noupdate -label or1200_dc_top/dcsb_ack_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcsb_ack_i
add wave -noupdate -label or1200_dc_top/tag_v /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/tag_v
add wave -noupdate -label or1200_dc_top/dc_en /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dc_en
add wave -noupdate -label or1200_dc_fsm/state /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_fsm/state
add wave -noupdate -label {dc_ram/mem3[0]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_ram/dc_ram/mem3[0]}
add wave -noupdate -label {ram0/mem[0]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_ram0/ram0/mem[0]}
add wave -noupdate -label {rf_a/mem[1]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_rf/rf_a/mem[1]}
add wave -noupdate -label or1200_dc_top/tagcomp_miss /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/tagcomp_miss
add wave -noupdate -label or1200_dc_top/dcqmem_ack_o /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcqmem_ack_o
add wave -noupdate -label or1200_lsu/lsu_stall /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_lsu/lsu_stall
add wave -noupdate -label or1200_cpu/dcpu_ack_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/dcpu_ack_i
add wave -noupdate -label or1200_cpu/icpu_adr_o -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/icpu_adr_o
add wave -noupdate -label {rf_a/mem[2]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_rf/rf_a/mem[2]}
add wave -noupdate -label or1200_dc_top/from_dcram -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/from_dcram
add wave -noupdate -label or1200_dc_top/mtspr_dc_done /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/mtspr_dc_done
add wave -noupdate -label store_miss_writethrough_ack /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_fsm/store_miss_writethrough_ack
add wave -noupdate -label {dc_ram/mem3[1]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_ram/dc_ram/mem3[1]}
add wave -noupdate -label {dc_ram/mem3[2]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_ram/dc_ram/mem3[2]}
add wave -noupdate -label {dc_ram/mem3[3]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_ram/dc_ram/mem3[3]}
add wave -noupdate -label or1200_dc_top/dcqmem_dat_i -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcqmem_dat_i
add wave -noupdate -label or1200_dc_top/dcqmem_cycstb_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcqmem_cycstb_i
add wave -noupdate -label or1200_dc_top/dcqmem_ci_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcqmem_ci_i
add wave -noupdate -label or1200_dc_top/dcqmem_adr_i -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcqmem_adr_i
add wave -noupdate -label or1200_dc_top/dcqmem_we_i /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dcqmem_we_i
add wave -noupdate -label {ram0/mem[1]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_ram0/ram0/mem[1]}
add wave -noupdate -label {ram0/mem[2]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_ram0/ram0/mem[2]}
add wave -noupdate -label {ram0/mem[3]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_ram0/ram0/mem[3]}
add wave -noupdate -label {ram0/mem[5]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_ram0/ram0/mem[5]}
add wave -noupdate -label {ram0/mem[6]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_ram0/ram0/mem[6]}
add wave -noupdate -label {ram0/mem[7]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_ram0/ram0/mem[7]}
add wave -noupdate -label {dc_ram/mem3[4]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_ram/dc_ram/mem3[4]}
add wave -noupdate -label {dc_ram/mem3[5]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_ram/dc_ram/mem3[5]}
add wave -noupdate -label {dc_ram/mem3[6]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_ram/dc_ram/mem3[6]}
add wave -noupdate -label {dc_ram/mem3[7]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_ram/dc_ram/mem3[7]}
add wave -noupdate -label {dc_tag0/mem[1]} -radix hexadecimal {/or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/or1200_dc_tag/dc_tag0/mem[1]}
add wave -noupdate -label or1200_freeze/waiting_on /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_freeze/waiting_on
add wave -noupdate -label or1200_dc_top/mtspr_dc_done /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/mtspr_dc_done
add wave -noupdate -label or1200_dc_top/dc_block_writeback -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/dc_block_writeback
add wave -noupdate -label or1200_dc_top/spr_cs /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/spr_cs
add wave -noupdate -label or1200_dc_top/spr_write /or1200_tb/or1200_sopc_inst/u_or1200/or1200_dc_top/spr_write
add wave -noupdate -label or1200_sprs/spr_cs -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_sprs/spr_cs
add wave -noupdate -label or1200_sprs/spr_addr -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_sprs/spr_addr
add wave -noupdate -label or1200_sprs/unqualified_cs -radix hexadecimal /or1200_tb/or1200_sopc_inst/u_or1200/or1200_cpu/or1200_sprs/unqualified_cs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6502368 ps} 0}
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
WaveRestoreZoom {6049348 ps} {7060205 ps}
