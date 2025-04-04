section .data
    num db 42           
    buffer db 0, 0, 10  

section .text
    global _start

_start:

    mov al, [num]       

    mov ah, 0           
    mov bl, 10          
    div bl              

    mov bl, ah          
    mov cl, al          
    mov al, bl          
    mov ah, 0           
    mov bl, 10          
    mul bl              
    add al, cl          

    mov bl, 10          
    div bl              
    add al, '0'         
    add ah, '0'         

    mov [buffer], al    
    mov [buffer + 1], ah

    mov rax, 1          
    mov rdi, 1          
    mov rsi, buffer     
    mov rdx, 3          
    syscall             

    mov rax, 60         
    xor rdi, rdi        
    syscall             
