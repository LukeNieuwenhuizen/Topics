/*
Implementation by Ronny Van Keer, hereby denoted as "the implementer".

For more information, feedback or questions, please refer to our website:
https://keccak.team/

To the extent possible under law, the implementer has waived all copyright
and related or neighboring rights to the source code in this file.
http://creativecommons.org/publicdomain/zero/1.0/
*/

#ifndef _Xoodoo_h_
#define _Xoodoo_h_

#include <stdint.h>
#include <stdlib.h>

#define MAXROUNDS   12
#define NROWS       3
#define NCOLUMS     4
#define NLANES      (NCOLUMS*NROWS)

/*    Round constants    */
#define _rc12   0x00000058  // 88
#define _rc11   0x00000038  // 56
#define _rc10   0x000003C0  // 960
#define _rc9    0x000000D0  // 208
#define _rc8    0x00000120  // 288
#define _rc7    0x00000014  // 20
#define _rc6    0x00000060  // 96
#define _rc5    0x0000002C  // 44
#define _rc4    0x00000380  // 896
#define _rc3    0x000000F0  // 240
#define _rc2    0x000001A0  // 416
#define _rc1    0x00000012  // 18


#if !defined(ROTL32)
    #if defined (__arm__) && !defined(__GNUC__)
        #define ROTL32(a, offset)                       __ror(a, (32-(offset))%32)
    #elif defined(_MSC_VER)
        #define ROTL32(a, offset)                       _rotl(a, (offset)%32)
    #else
        #define ROTL32(a, offset)                       ((((uint32_t)a) << ((offset)%32)) ^ (((uint32_t)a) >> ((32-(offset))%32)))
    #endif
#endif

#if !defined(READ32_UNALIGNED)
    #if defined (__arm__) && !defined(__GNUC__)
        #define READ32_UNALIGNED(argAddress)            (*((const __packed uint32_t*)(argAddress)))
    #elif defined(_MSC_VER)
        #define READ32_UNALIGNED(argAddress)            (*((const uint32_t*)(argAddress)))
    #else
        #define READ32_UNALIGNED(argAddress)            (*((const uint32_t*)(argAddress)))
    #endif
#endif

#if !defined(WRITE32_UNALIGNED)
    #if defined (__arm__) && !defined(__GNUC__)
        #define WRITE32_UNALIGNED(argAddress, argData)  (*((__packed uint32_t*)(argAddress)) = (argData))
    #elif defined(_MSC_VER)
        #define WRITE32_UNALIGNED(argAddress, argData)  (*((uint32_t*)(argAddress)) = (argData))
    #else
        #define WRITE32_UNALIGNED(argAddress, argData)  (*((uint32_t*)(argAddress)) = (argData))
    #endif
#endif

#if !defined(index)
    #define    index(__x,__y)    ((((__y) % NROWS) * NCOLUMS) + ((__x) % NCOLUMS))
#endif

typedef    uint32_t tXoodooLane;

void Xoodoo_Initialize(uint32_t *state);
void Xoodoo_Permute_12rounds(uint32_t *state, uint32_t* masks);

#endif