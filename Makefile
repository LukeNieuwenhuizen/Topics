ARMGNU = arm-none-eabi

MODE = -mthumb
MACHINE = -mcpu=arm7tdmi -march=armv4t

FLAGS = -Wall -Werror -nostdlib -nostartfiles -nodefaultlibs -ffreestanding

IN = ./encryption/Xoodoo-masked-optimized.c

OUT = ./assembly/xoodoo.s

xoodoo:
	$(ARMGNU)-gcc -S $(MODE) $(MACHINE) $(FLAGS) $(IN)  -o $(OUT)

scanner: scanner.c
	gcc -std=c99 -Wall -o a.out scanner.c

clean:
	rm a.out ./assembly/output*