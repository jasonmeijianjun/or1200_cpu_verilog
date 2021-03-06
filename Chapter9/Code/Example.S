        .section .text,"ax"
	.org 0x100
.global _start
_start:
      l.andi r0,r0,0           #初始化寄存器r0-r4，都置为0
      l.movhi r1,0
      l.movhi r2,0
      l.movhi r3,0
      l.movhi r4,0

      l.movhi r2,0x8483
      l.ori r2,r2,0x8281        #设置r2为0x84838281
      
      l.ori r3,r0,0x50          #设置r3为0x50
      
      l.sw 0x0(r3),r0           #下面三条指令起初始化存储器中分别从0x50、0x54、0x58开始的字，都初始化为0
      l.sw 0x4(r3),r0
      l.sw 0x8(r3),r0
      
      l.nop                     #空指令只是填充流水线，这样在使用ModelSim仿真的时候便于观察波形，后面的空指令都是这个目的
      l.nop
      l.sb 0x0(r3),r2           #存储字节，在地址0x50处存储0x81        
      l.nop                     
      l.nop
      l.sh 0x4(r3),r2           #存储半字，在地址0x54处存储0x8281        
      l.sw 0x8(r3),r2           #存储字，在地址0x58处存储0x84838281

      l.lwz r4,0x0(r3)          #读出0x50处的字，应该是0x81000000
      l.lwz r4,0x4(r3)          #读出0x54处的字，应该是0x82810000
      l.lwz r4,0x8(r3)          #读出0x58处的字，应该是0x84838281
      
      l.nop
      l.nop
      l.lbs r4,0x8(r3)          #读出0x58处的字节，并进行符号扩展，应该是0xffffff84
      l.nop
      l.nop
      l.lbz r4,0x8(r3)          #读出0x58处的字节，并进行零扩展，应该是0x00000084
 
      l.lhs r4,0x8(r3)          #读出0x58处的半字，并进行符号扩展，应该是0xffff8483
      l.lhz r4,0x8(r3)          #读出0x58处的半字，并进行零扩展，应该是0x00008483
      
      l.lwz r4,0x7(r3)          #从0x57处加载字，地址不是4字节对齐会引发异常
      l.movhi r3,0x0            #本条指令应该没有执行，因为处理器转移到了对齐异常处理例程入口地址
      
      .org 0x600                #0x600是对齐异常处理例程的入口地址
      l.movhi r3,0xf0f0         #本指令只是作为验证使用，验证处理器是否转移到这里
      l.nop 0x0001              #退出模拟器
