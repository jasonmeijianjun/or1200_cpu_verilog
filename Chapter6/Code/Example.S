     .section .text,"ax"
	 .org 0x100
.global _start
_start:
      l.andi r0,r0,0              #初始化r0-r4，都设置为0
      l.extwz r1,r0
      l.extwz r2,r0
      l.extwz r3,r0
      l.extwz r4,r0

      l.sfeq r1,r2                 #比较r、r2是否相等，此时r1、r2均为0，所以会设置SR[F]为1
      l.bnf 0x100                  #此时flag为1，不满足转移条件，所以不会转移
      l.movhi r3,0x0001            #会执行本指令，r3=0x10000
      l.movhi r3,0x0002            #r3=0x20000

      l.bf 0x3                     #此时flag为1，所以会转移到后面第3条指令l.movhi r3,0x0004
      l.movhi r3,0x0003            #执行延迟槽的指令，使得r3=0x30000
      l.movhi r3,0xff00
      l.movhi r3,0x0004            #上一条指令应该没有执行，本指令使得r3=0x40000

      l.j 0x3                      #无条件转移到后面第3条指令l.movhi r3,0x0006
      l.movhi r3,0x0005            #执行延迟槽的指令，使得r3=0x50000
      l.movhi r3,0x00ff
      l.movhi r3,0x0006            #上一条指令应该没有执行，本指令使得r3=0x60000

      l.jal 0x3                    #无条件转移到后面第3条指令l.movhi r3,0x0008，将延迟槽后的指令地址存入r9
      l.movhi r3,0x0007            #执行延迟槽的指令，使得r3=0x70000
      l.movhi r3,0xf0f0
      l.movhi r3,0x0008            #上一条指令没有执行，本指令使得r3=0x80000
      l.or r4,r9,r0                #r9作为link address，存放的应该是l.movhi r3,0xf0f0的地址，为0x14C              
      
      l.movhi r4,0x016c
      l.srli r4,r4,16              #r4为0x016C
      l.jalr r4                    #转移到0x016C，即指令l.movhi r3,0x000a，将延迟槽后的指令地址存入r9
      l.movhi r3,0x0009            #执行延迟槽的指令，使得r3为0x90000
      l.movhi r3,0x0f0f
      l.movhi r3,0x000a            #上一条指令没有执行，本指令地址为0x16C，指令执行使得r3为0xA0000
      l.or r4,r9,r0                #r9作为link address，存放的应该是l.movhi r3,0x0f0f的地址，为0x168
      
      l.movhi r4,0x0188
      l.srli r4,r4,16              #r4为0x0188
      l.jr r4                      #转移到0x0188，即指令l.movhi r3,0x000c
      l.movhi r3,0x000b            #执行延迟槽的指令，使得r3为0xB0000
      l.movhi r3,0xf00f
      l.movhi r3,0x000c            #上一条指令没有执行，本指令地址为0x188，指令执行使得r3为0xC0000
      
      l.nop 0x0001                 #退出模拟器
