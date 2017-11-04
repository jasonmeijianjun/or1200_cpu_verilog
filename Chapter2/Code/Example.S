        .section .text,"ax"
	.org 0x100
.global _start
_start:
      l.andi r0,r0,0
      l.extwz r1,r0
      l.extwz r2,r0
      l.addi r1,r1,0x0A
      l.add r2,r2,r1
      l.nop 0x0001                   
