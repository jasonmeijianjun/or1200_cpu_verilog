       .section .text,"ax"  
       .global _start
       .org 0x100       
##############################           第1步            ##############################
_start:
      l.movhi r0,0x0                #初始化r0-r3，都清零，同时可以观察此时l.addi指令执行需要的时钟周期数
      l.addi r1,r0,0x0
      l.addi r2,r0,0x0
      l.addi r3,r0,0x0

##############################           第2步            ##############################
_IC_Init:                           #ICache初始化，将IC_TAG中512个表项的V都设置为0，表示无效，设置方法就#是向ICBIR寄存器中依次写入0x0、0x10、0x20……0x2000
      l.mtspr r0,r1,0x2000          #ICBIR寄存器的组内索引可以任意，只要地址的高5位是0x4即可，此处取0x2000
      l.sfeqi r1,0x2000             #r1是写入ICBIR的地址，依次是0x0、0x10、0x20……0x2000，当r1等于0x2000
                                    #时表示已经设置完毕了IC_TAG中全部512个表项
      l.bnf _IC_Init                #如果r1不等于0x2000表示还没有设置完毕，继续循环
      l.addi r1,r1,0x10             #延迟槽指令，r1加0x10
      l.movhi r1,0x0                #ICache初始化完毕后，将r1清零，因为后面还要使用r1

##############################           第3步            ##############################
      l.ori r3,r0,0x1             #r3等于0x1
      l.mtspr r0,r3,0x1200        #向地址0x1200的SPR写入0x1，0x1200对应的SPR就是ITLBW0MR0，
                                  #所以此处就是设置ITLBW0MR0，对应MR表的第0项放置0x1，
                                  #其中VPN为0，Valid为1

      l.ori r3,r0,0x00C0          #r3等于0x00C0
      l.mtspr r0,r3,0x1280        #向地址0x1280的SPR写入0x00C0，0x1280对应的SPR就是ITLBW0TR0，
                                  #所以此处就是设置ITLBW0TR0，对应TR表的第0项放置0x00C0，其中PPN为0x0，
                                  #sxe为1，uxe为1，ci为0
                                  
                                  #上述设置使得有效地址0x0-0x1fff被翻译为物理地址0x0-0x1fff，两者相等
##############################           第4步            ##############################
      l.ori r3,r0,0x8051          #r3等于0x8051
      l.mtspr r0,r3,0x11          #设置SR寄存器为0x8051，也就是SR[IME]、SR[ICE]都为1，使能IMMU、ICache
      l.nop

##############################           第5步            ##############################
_loop:                            #此时ICache已经使能，第一次运行下面的循环，读取第1条指令时会发生ICache
                                  #失靶，于是读入第一条指令所在的内存块，共16个字节，含4条指令，这样执行第
                                  #2条、第3条、第4条指令时就会ICache命中，同时在后面的循环中都会ICache
                                  #命中
      l.addi r1,r1,0x1            #每次循环r1加1
      l.sfeqi r1,0x10             #判断是否循环了16次
      l.bnf _loop                 #如果循环了16次，则退出循环
      l.addi r2,r2,0x1            #r2记录总循环次数

##############################           第6步            ##############################
      l.addi r1,r0,0x0            #r1清零
      
      l.ori r3,r0,0x00C2
      l.mtspr r0,r3,0x1280        #向地址0x1280的SPR写入0x00C2，0x1280对应的SPR就是ITLBW0TR0，
                                  #所以此处就是设置ITLBW0TR0，对应TR表的第0项放置0x00C2，其中PPN为0x0，
                                  #sxe为1，uxe为1，ci为1，表示0x0-0x1fff对应的内存页禁止缓存
      
      l.j _loop                   #此时0x0-0x1fff对应的内存页禁止缓存，再次执行第5步中的循环，
                                  #观察此时的执行效果
