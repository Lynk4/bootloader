[BITS 16]
[ORG 0x7c00]

start:
    cli			;Clear Interrupts
    mov ax, 0x00
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7c00
    sti			;Enable Interrupts 
    mov si, msg
    
print:
    lodsb		;increases SI after loading byte ar ds:si into the AL register.
    cmp al, 0
    je done
    mov ah, 0x0E
    int 0x10
    jmp print
 
    
       
done:
    cli
    hlt			;Put an end to further CPU usage.   
    
msg: db 'Welcome Mr. Kant!', 0

times 510 - ($ - $$) db 0

dw 0xAA55
	
