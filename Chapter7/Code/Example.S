     .section .text,"ax"
	.org 0x100
.global _start
_start:
      l.movhi r0,0           #初始化r0-r4寄存器，全部清零
      l.movhi r1,0
      l.movhi r2,0
      l.movhi r3,0
      l.movhi r4,0

      l.mfspr r1,r0,0x0011   #读取SR，复位的时候SR为0x8001，最后一位为1，表示处于特权模式
      l.ori r3,r1,0x6        #现在r1中存储的是SR的值，r1 | 0x6结果变为0x8007，存入r3
      l.mtspr r0,r3,0x0011   #将r3写入SR，此时r3为0x8007，写入SR后表示允许外部中断、计时器中断

      l.sys 0x0f0f           #进入系统调用异常处理例程，地址是0xC00
      l.mfspr r2,r0,0x11     #读取SR，使用l.rfe指令从异常处理中返回后，SR应恢复为0x8007

      l.trap 0               #进入自陷异常处理例程，地址是0xE00
      l.ori r4,r0,0x2        #在自陷异常处理例程中没有使用l.rfe指令返回，所以本指令不会得到执行

         .org 0x0c00         #0x0c00是系统调用异常处理例程入口地址
      l.mfspr r1,r0,0x11     #读取SR的值，异常发生后会禁用外部中断、计时器中断，所以SR应为0x8001
      l.mfspr r1,r0,0x20     #读取EPCR的值，为l.sys下一条指令的地址，这里就应该是0x124
      l.mfspr r2,r0,0x40     #读取ESR的值，为l.sys执行时的SR值，应是0x8007
      l.movhi r1,0x1       #下面三条指令没有特殊目的，主要是在流水线上填充单周期指令，便于后面对l.rfe的分析
      l.movhi r1,0x2
      l.movhi r1,0x3
      l.rfe      

         .org 0x0e00          #0x0e00是自陷异常处理例程入口地址
      l.mfspr r1,r0,0x11      #读取SR的值，异常发生后会禁用外部中断、计时器中断，所以SR为0x8001
      l.mfspr r1,r0,0x20      #读取EPCR的值，为l.trap指令的地址，这里就是0x128
      l.mfspr r2,r0,0x40      #读取ESR的值，为l.sys执行时的SR值，应是0x8007
      l.nop 0x0001            #模拟器停止运行
