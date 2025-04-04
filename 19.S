section .data
    buffer db 0, 10    
    buffer_len equ 2   

section .text
    global _start

_start:
    mov al, 'A'        

alphabet_loop:

    mov [buffer], al

    push rax           
    mov rax, 1         
    mov rdi, 1         
    mov rsi, buffer    
    mov rdx, buffer_len
    syscall            
    pop rax            

    inc al             
    cmp al, 'E' + 1    
    jl alphabet_loop   

    mov rax, 60        
    xor rdi, rdi       
    syscall            
