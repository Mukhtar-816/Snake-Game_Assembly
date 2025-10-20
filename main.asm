INCLUDE Irvine32.inc

EXTERN f1:PROC

.data
    val DWORD 10
    result DWORD ?

.code

main PROC
    push val
    call f1
    add esp, 4

    mov result, eax

    mov eax, result
    call WriteDec
    call Crlf

    exit
main ENDP

END main
