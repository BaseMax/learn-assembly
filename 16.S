section .data
    numbers db 1, 2, 3, 4, 5  
    num_count equ 5           
    buffer db "00", 10        
    buffer_len equ 3          

section .text
    global _start

_start:
    xor rax, rax              
    mov rcx, num_count        
    mov rsi, numbers          

sum_loop:
    movzx rbx, byte [rsi]     
    add rax, rbx              
    inc rsi                   
    dec rcx                   
    jnz sum_loop              

    mov r8, rax               

    mov rbx, 10               
    mov rdi, buffer + 1       
convert_loop:
    xor rdx, rdx              
    div rbx                   
    add dl, '0'               
    mov [rdi], dl             
    dec rdi                   
    test rax, rax             
    jnz convert_loop          

    mov rsi, buffer           
    mov rdx, buffer_len       
    cmp r8, 10                
    jge print                 
    inc rsi                   
    dec rdx                   

print:
    push rcx                  
    mov rax, 1                
    mov rdi, 1                
    syscall                   
    pop rcx                   

    mov rax, 60               
    xor rdi, rdi              
    syscall
