ARMGNU = arm-none-eabi

COPS = -mthumb -mcpu=arm7tdmi -march=armv4t -Wall -Werror -nostdlib -nostartfiles -nodefaultlibs -nostdlib -ffreestanding
# -Os removed so I don't have to deal with stack pointers

xor:
	$(ARMGNU)-gcc -S $(COPS) ./encryption/xor.c -o ./assembly/xor.s

xoodoo:
	$(ARMGNU)-gcc -S $(COPS) ./encryption/xoodoo.c -o ./assembly/xoodoo.s

scanner: scanner.c
	gcc -std=c99 -o a.out scanner.c

testXor: 
	gcc -std=c99 -o xor.out ./encryption/xor.c

unicorn:
	cc  test1.c -L/usr/local/Cellar/glib/2.72.3_1/lib -L/usr/local/opt/gettext/lib -lglib-2.0 -lintl  -lpthread -lm -lunicorn -o test1

clean:
	rm a.out ./assembly/output*


# MODE = -mthumb
# TARGET = -mcpu=cortex-m4
# thumb: ./encryption/xor.c
# 	arm-none-eabi-gcc $(MODE) $(TARGET) -msoft-float -S ./encryption/xor.c -o ./assembly/output.s

# ./../ELMO/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-g++ -S xor.c -o output.s -mthumb

# cc -o sample test.c -lkeystone -lstdc++ -lm    