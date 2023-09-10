// for evm-puzzle 7

/**
  
00      5A        GAS               2
01      34        CALLVALUE         2
02      5B        JUMPDEST          1     ⬅️⬅️️
03      6001      PUSH1 01          3      ⬆️
05      90        SWAP1             3      ⬆️
06      03        SUB               3      ⬆️
07      80        DUP1              3      ⬆️
08      6000      PUSH1 00          3      ⬆️  sum is 43
0A      14        EQ                3      ⬆️  4 + 43(x - 1) + 32 + 1 = 0xa6
0B      6011      PUSH1 11          3      ⬆️     43x - 6 = 0xa6
0D      57        JUMPI             10     ⬆️        x = 4
0E      6002      PUSH1 02          3      ⬆️
10      56        JUMP              8    ➡️➡️
11      5B        JUMPDEST          1
12      5A        GAS               2
13      90        SWAP1             3
14      91        SWAP2             3
15      03        SUB               3
16      60A6      PUSH1 A6          3
18      14        EQ                3
19      601D      PUSH1 1D          3
1B      57        JUMPI             10
1C      FD        REVERT            0
1D      5B        JUMPDEST          1
1E      00        STOP              0

 */
