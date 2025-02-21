mov ecx, myArrayLength ; Load the array length
mov esi, myArray ; Load the base address of the array

; Check array index bounds:
mov eax, arrayIndex ; Load the array index
cmp eax, ecx ; Compare index with length
jge outOfBoundsHandler ; Jump to error handler if index >= length

mov edx, 4 ; Multiply index by 4 (assuming 32-bit integers)
imul edx

mov ebx, esi ; Move array base address to ebx
add ebx, edx ; Add the offset to the base address
mov eax, [ebx] ; Access the element at the calculated address

jmp afterAccess

outOfBoundsHandler:
; Handle out-of-bounds access (e.g., print error message, return error code)

afterAccess:
; ... rest of the code ...

myArrayLength dw 10 ; Example array length
myArray dd 10 dup(?) ; Example array (uninitialized)