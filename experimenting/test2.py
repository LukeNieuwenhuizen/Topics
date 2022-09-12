from __future__ import print_function
from unicorn import *
from unicorn.arm_const import *


# code to be emulated
ARM_CODE   = "\x00\x00\xa0\xe3"  # start: mov r0, #0
ARM_CODE  += "\x01\x10\xa0\xe3"  # mov r1, #1
ARM_CODE  += "\x00\x00\x50\xe3"  # cmp r0, #0
ARM_CODE  += "\xfb\xff\xff\x1a"  # bne start
#ARM_CODE  += "\x00\x10\xa0\xe1"  # mov r1, r0

# memory address where emulation starts
ADDRESS  = 0x1000


# callback for tracing instructions
def hook_code(uc, address, size, user_data):
    print(">>> Tracing instruction at 0x%x, instruction size = %u" %(address, size))
    print(uc.reg_read(UC_ARM_REG_CPSR))


# Test ARM
def test_arm():
    print("Emulate ARM code")
    try:
        # Initialize emulator in ARM mode
        mu = Uc(UC_ARCH_ARM, UC_MODE_ARM)

        # map 2MB memory for this emulation
        mu.mem_map(ADDRESS, 2 * 1024 * 1024)

        # write machine code to be emulated to memory
        mu.mem_write(ADDRESS, ARM_CODE)

        # initialize machine registers
        mu.reg_write(UC_ARM_REG_R0, 0x0)
        mu.reg_write(UC_ARM_REG_R2, 0x0)
        mu.reg_write(UC_ARM_REG_R3, 0x0)

        # tracing all instructions with customized callback
        mu.hook_add(UC_HOOK_CODE, hook_code)

        # emulate machine code in infinite time
        mu.emu_start(ADDRESS, ADDRESS + len(ARM_CODE))

        # now print out some registers
        print(">>> Emulation done. Below is the CPU context")

        r0 = mu.reg_read(UC_ARM_REG_R0)
        r1 = mu.reg_read(UC_ARM_REG_R1)
        print(">>> R0 = 0x%x" %r0)
        print(">>> R1 = 0x%x" %r1)

    except UcError as e:
        print("ERROR: %s" % e)

if __name__ == '__main__':
    test_arm()