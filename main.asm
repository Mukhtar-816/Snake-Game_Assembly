INCLUDE Irvine32.inc

.data
    val DWORD 10      ; example argument to pass
    result DWORD ?    ; store result returned from function

.code

main PROC
    ; Push argument onto stack (val)
    push val
    call f1
    add esp, 4          ; clean up stack (1 DWORD argument)

    mov result, eax     ; store return value

    ; Display result
    call Crlf
    mov eax, result
    call WriteDec
    call Crlf

    exit
main ENDP


; Function f1: receives one argument, returns something in eax
; arg is at [ebp + 8]
f1 PROC
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]  ; get argument passed (val)
    
    ; For example: multiply by 2
    shl eax, 1          ; eax = eax * 2

    pop ebp
    ret 4               ; clean stack for 1 argument (optional if caller cleans)

f1 ENDP

END main
