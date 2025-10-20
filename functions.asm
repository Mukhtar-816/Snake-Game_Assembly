INCLUDE Irvine32.inc

PUBLIC f1

.code

f1 PROC
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    shl eax, 1          ; double the input

    pop ebp
    ret 4
f1 ENDP

END
