/* Unicorn Emulator Engine */
/* By Nguyen Anh Quynh, 2015 */

/* Sample code to demonstrate how to emulate ARM code */

#include <unicorn/unicorn.h>
#include <string.h>

// code to be emulated
#define THUMB_CODE "\x4F\xF0\x63\x03\x4F\xF0\x0A\x02\x1A\x46" // sub    sp, #0xc



#define ADDRESS 0x10000

static void hook_block(uc_engine *uc, uint64_t address, uint32_t size, void *user_data){
    printf(">>> Tracing basic block at 0x%" PRIx64 ", block size = 0x%x\n", address, size);
}

static void hook_code(uc_engine *uc, uint64_t address, uint32_t size, void *user_data){
    printf(">>> Tracing instruction at 0x%" PRIx64 ", instruction size = 0x%x\n", address, size);

}

static void test_thumb(void){
    uc_engine *uc;
    uc_err err;
    uc_hook trace1, trace2;

    // int sp = 0x1234; // R0 register
    int r0 = 0x0;// = 0x1234; // R0 register
    int r1 = 0x0;          // R1 register
    int r2 = 0x0;// = 0x6789; // R1 register
    int r3 = 0x0;//; = 0x3333; // R2 register

    char code[] = "\x4F\xF0\x63\x03\x4F\xF0\x0A\x02\x1A\x46";

    printf("Emulate THUMB code\n");

    // Initialize emulator in ARM mode
    err = uc_open(UC_ARCH_ARM, UC_MODE_THUMB, &uc);
    if (err) {
        printf("Failed on uc_open() with error returned: %u (%s)\n", err,
               uc_strerror(err));
        return;
    }

    // map 2MB memory for this emulation
    uc_mem_map(uc, ADDRESS, 2 * 1024 * 1024, UC_PROT_ALL);

    // write machine code to be emulated to memory
    uc_mem_write(uc, ADDRESS, code, sizeof(code) - 1);

    // initialize machine registers
    // uc_reg_write(uc, UC_ARM_REG_SP, &sp);
    uc_reg_write(uc, UC_ARM_REG_R0, &r0);
    uc_reg_write(uc, UC_ARM_REG_R1, &r1);
    uc_reg_write(uc, UC_ARM_REG_R2, &r2);
    uc_reg_write(uc, UC_ARM_REG_R3, &r3);

    // tracing all basic blocks with customized callback
    uc_hook_add(uc, &trace1, UC_HOOK_BLOCK, hook_block, NULL, 1, 0);

    // tracing one instruction at ADDRESS with customized callback
    uc_hook_add(uc, &trace2, UC_HOOK_CODE, hook_code, NULL, ADDRESS, ADDRESS);

    // emulate machine code in infinite time (last param = 0), or when
    // finishing all the code.
    // Note we start at ADDRESS | 1 to indicate THUMB mode.
    err = uc_emu_start(uc, ADDRESS | 1, ADDRESS + sizeof(code) - 1, 0, 0);
    if (err) {
        printf("Failed on uc_emu_start() with error returned: %u\n", err);
    }

    // now print out some registers
    printf(">>> Emulation done. Below is the CPU context\n");

    uc_reg_read(uc, UC_ARM_REG_R0, &r0);
    uc_reg_read(uc, UC_ARM_REG_R1, &r1);
    uc_reg_read(uc, UC_ARM_REG_R2, &r2);
    uc_reg_read(uc, UC_ARM_REG_R3, &r3);
    printf(">>> R0 = 0x%x\n", r0);
    printf(">>> R1 = 0x%x\n", r1);
    printf(">>> R2 = 0x%x\n", r2);
    printf(">>> R3 = 0x%x\n", r3);


    uc_close(uc);
}


int main(int argc, char **argv, char **envp)
{
    test_thumb();
    return 0;
}