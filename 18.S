section .data
    numbers db 4, 9, 6    
    num_count equ 3       
    buffer db "00", 10    
    buffer_len equ 3      

section .text
    global _start

_start:

    xor rax, rax          
    mov rsi, numbers      
    mov rcx, num_count    

sum_loop:
    movzx rbx, byte [rsi] 
    add rax, rbx          
    inc rsi               
    dec rcx               
    jnz sum_loop          

    mov rbx, num_count    
    xor rdx, rdx          
    div rbx               

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
    cmp rax, 0            
    jne print             
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
