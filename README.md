# Assembly Segmentation Fault Bug

This repository demonstrates a common error in assembly programming: a segmentation fault caused by accessing memory outside the allocated address space. The error occurs in the `bug.asm` file and is fixed in `bugSolution.asm`.

The bug arises from incorrect pointer arithmetic, leading to an out-of-bounds memory access. The solution involves carefully verifying the calculated address before attempting to access it and implementing appropriate bounds checking.