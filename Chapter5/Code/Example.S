     .section .text,"ax"
	.org 0x100
.global _start
_start:                                       
      l.movhi r0,0           #初始化r0-r4寄存器，全部清零
      l.movhi r1,0
      l.movhi r2,0
      l.movhi r3,0
      l.movhi r4,0

      l.mfspr r1,r0,0x0      #读取VR(Version Register)
      l.mfspr r2,r0,0x0001   #读取UPR(Unit Present Register)
      l.mfspr r1,r0,0x0010   #读取NPC，此处应该是本指令的地址，也就是0x11C
      l.mfspr r1,r0,0x0012   #读取PPC，此时应该是上一条指令的地址，也是0x11C
      l.mfspr r2,r0,0x0011   #读取SR，复位的时候SR为0x8001，最后一位为1表示处于特权模式，所以r2变为0x8001

      l.movhi r4,0xffff
      l.ori r4,r4,0xfffe      #修改r4为0xfffffffe

      l.mfspr r1,r0,0x0402   #0x0402是通用寄存器r2在SPR空间的映射地址，这里实际就是读取r2的值
      l.mtspr r0,r2,0x0403   #0x0403是通用寄存器r3在SPR空间的映射地址，这里实际就是将r2的值复制到r3中
      l.and r3,r3,r4         #现在r3中存储的是SR的值，r3 & 0xfffffffe使得最低位为0，对应的就是SR的SM位

      l.mtspr r0,r3,0x0011   #将r3写入SR，由于r3的最低位为0，所以现在就处于用户模式了，SR为0x8000
      
      l.nop
      
      l.sys 0x01             #系统调用指令，会跳至系统调用异常处理例程入口，也就是地址0xc00
      
      .org 0xc00             #0xc00就是系统调用异常的处理例程入口
      l.mfspr r1,r0,0x20     #读取EPCR0，应该是l.sys指令的下一条指令地址
      l.mfspr r1,r0,0x40     #读取ESR0，应该l.sys指令执行时的SR，为0x8000
      
      l.nop 0x0001
