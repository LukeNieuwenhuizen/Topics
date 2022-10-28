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

# xor:
# 	$(ARMGNU)-gcc -S $(FLAGS) ./encryption/xor.c -o ./assembly/xor.s

# testXor: 
# 	gcc -std=c99 -o xor.out ./encryption/xor.c

# unicorn:
# 	cc  test1.c -L/usr/local/Cellar/glib/2.72.3_1/lib -L/usr/local/opt/gettext/lib -lglib-2.0 -lintl  -lpthread -lm -lunicorn -o test1

# MODE = -mthumb
# TARGET = -mcpu=cortex-m4
# thumb: ./encryption/xor.c
# 	arm-none-eabi-gcc $(MODE) $(TARGET) -msoft-float -S ./encryption/xor.c -o ./assembly/output.s

# ./../ELMO/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-g++ -S xor.c -o output.s -mthumb

# cc -o sample test.c -lkeystone -lstdc++ -lm    