     .section .text,"ax"
	 .org 0x100
     .global _start
_start:
      l.andi r0,r0,0              #��ʼ��r0-r4��ȫ������
      l.movhi r1,0
      l.movhi r2,0
      l.movhi r3,0
      l.movhi r4,0

      l.movhi r1,0x1234
      l.ori r1,r1,0x5678           #����r1Ϊ0x12345678
      
      l.movhi r2,0x8765
      l.ori r2,r2,0x4321           #����r2Ϊ0x87654321
      
      l.mul r3,r1,r2               #r3Ϊr1*r2����ĵ�32λ����0x70b88d78��r1��r2��Ϊ�з�����
      l.nop                        #�����ָ�Ϊ���Ǳ��ڹ۲���沨��
      l.nop
      l.mulu r3,r1,r2              #r3Ϊr1*r2����ĵ�32λ����0x70b88d78��r1��r2��Ϊ�޷�����
      l.muli r3,r1,0x69            #r3Ϊr1*0x69����ĵ�32λ����0x77777738
            
      l.macrc r4                   #��������Ĵ���maclo��macho
      l.nop                        #�����ָ�Ϊ���Ǳ��ڹ۲���沨��
      l.nop
      l.mac r1,r2                  #{machi,maclo} = {0x0,0x0} + (r1*r2)[31:0] = {0x0,0x70b88d78}
      l.nop
      l.nop
      l.mfspr r3,r0,0x2801         #����maclo��ֵ��r3��r3=maclo=0x70b88d78
      l.mfspr r3,r0,0x2802         #����machi��ֵ��r3��r3=machi=0x0
      
      l.mac r1,r2                  #{machi,maclo} = {0x0,0x70b88d78} + (r1*r2)[31:0] = {0x0,0xe1711af0}
      l.mfspr r3,r0,0x2801         #����maclo��ֵ��r3��r3=maclo=0xe1711af0
      l.mfspr r3,r0,0x2802         #����machi��ֵ��r3��r3=machi=0x0
      
      l.maci r1,0x12               #{machi,maclo} = {0x0,0xe1711af0} + (r1*0x12)[31:0] = {0x1,0x291f2f60}
      l.mfspr r3,r0,0x2801         #����maclo��ֵ��r3��r3=maclo=0x291f2f60
      l.mfspr r3,r0,0x2802         #����machi��ֵ��r3��r3=machi=0x1
      
      l.maci r1,0xf000             #{machi,maclo} = {0x1,0x291f2f60} + (r1*0xfffff000)[31:0] =
# {0x0,0xe3b7af60}
      l.mfspr r3,r0,0x2801         #����maclo��ֵ��r3��r3=maclo=0xe3b7af60
      l.mfspr r3,r0,0x2802         #����machi��ֵ��r3��r3=machi=0x0
      
      l.msb r1,r2                  #{machi,maclo} = {0x0,0xe3b7af60} �C (r1*r2)[31:0] = {0x0,0x72FF21E8}
      l.mfspr r3,r0,0x2801         #����maclo��ֵ��r3��r3=maclo=0x72FF21E8
      l.mfspr r3,r0,0x2802         #����machi��ֵ��r3��r3=machi=0x0
      
      l.nop
      l.nop
      l.div r3,r2,r1               #�з��ų�����r3=fffffffa,ov=1
      l.nop
      l.nop
      l.divu r3,r2,r1              #�޷��ų�����r3=7,ov=0
      
      l.nop 0x0001                 