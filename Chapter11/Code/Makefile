ifndef CROSS_COMPILE
CROSS_COMPILE = or32-elf-
endif
CC = $(CROSS_COMPILE)as
LD = $(CROSS_COMPILE)ld
OBJCOPY = $(CROSS_COMPILE)objcopy

OBJECTS = Example.o

export	CROSS_COMPILE

# ********************
# Rules of Compilation
# ********************

all: Example.or32 mem.data

%.o: %.S
	$(CC) $< -o $@
Example.or32: ram.ld $(OBJECTS)
	$(LD) -T ram.ld $(OBJECTS) -o $@
mem.bin: Example.or32
	$(OBJCOPY) -O binary $<  $@
mem.data:mem.bin
	./Bin2Mem.exe -f $< -o $@
Example.trace: Example.or32
	sim -t $< -f sim.cfg > $@
clean:
	rm -f *.o *.or32 *.bin *.data *.trace
