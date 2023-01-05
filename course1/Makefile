#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# SImple makefile for multitarget build system
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
# 		<FILE>.i Generate the preprocessed ouput of all c-program implementation files
#		<FILE>.asm Generate assembly output of c-program implementation files
# 		<FILE>.O - Generate the object file
#
#		compile-all - Compile all object files, but do not link
#		build - Compile all object files and link into a final executable
#		clean - Remove all generated files
#
# Platform Overrides:
#      	PLATFORM - (HOST, MSP432)
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides

PLATFORM = HOST

ifeq ($(PLATFORM),MSP432)
	CC = arm-none-eabi-gcc
	LD = arm-none-eabi-ld
	LINKER_FILE =  ../msp432p401r.lds
	LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
#ARM FLAGS
	CPU= cortex-m4
	ARCH = thumb
	SPECS = nosys.specs
	FPU = fpv4-sp-d16
	ARMFLAGs = -mcpu=$(CPU) -m$(ARCH) -march=armv7e-m -mfloat-abi=hard -mfpu=$(FPU) --specs=$(SPECS) 	 
	OBJDUMP = arm-none-eabi-objdump
	SIZE = arm-none-eabi-size
else
	CC = gcc
	LD = ld 
	SIZE = size
	LDFLAGS = -Wl,-Map=$(TARGET).map
	OBJDUMP = objdump
	
endif 
# Compiler Flags and Defines

CFLAGS = -Wall -Werror -g -O0 -std=c99 -D$(PLATFORM) $(ARMFLAGs)
CPPFLAGs = -E

TARGET = main

OBJS:=$(SOURCES:.c=.o)
DEPS = $(SOURCES:.c=.d)

%.i: %.c 
	$(CC) $(INCLUDES) $(CPPFLAGs) $< $(CFLAGS) -o $@
%.asm: %.c
	$(CC) $(INCLUDES) -S $< $(CFLAGS) -o $@
%.o: %.c
	$(CC) $(INCLUDES) -c $< $(CFLAGS) -o $@ 
%.d: %.c
	$(CC) $(INCLUDES) -M $< $(CFLAGS) -o $@
$(TARGET).asm: $(TARGET).out
	$(OBJDUMP) -d $< >> $@
        
 .PHONY: compile-all
 compile-all: $(OBJS)
	$(CC) $(INCLUDES) $(OBJS) -c $(CFLAGS)  -o $(TARGET).o

 .PHONY: build
 build: $(TARGET).out $(TARGET).asm

$(TARGET).out: $(OBJS) $(DEPS)
	$(CC) $(INCLUDES) $(CFLAGS) $(OBJS) $(LDFLAGS) -o $@ 
	$(SIZE) $(TARGET).out
	
.PHONY: clean
 clean:
	rm -f $(OBJS) *.i *.o *.asm *.d $(TARGET).out $(TARGET).map


