        .section .text,"ax"
	.org 0x100
.global _start
_start:
      l.andi r0,r0,0
      l.movhi r4,0x8000
      l.movhi r2,0x0
      l.ori r2,r2,0x1234      
      l.ori r3,r2,0x1234
      
      l.add r4,r2,r3
      l.sfeqi r4,0x1234
      l.sfeqi r2,0x1234

      l.nop 0x0001
