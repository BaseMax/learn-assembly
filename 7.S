section .data
    buffer db '000', 10    

section .text
    global _start

_start:
    mov rax, 1         
    mov rbx, 5         

factorial_loop:
    mul rbx            
    dec rbx            
    jnz factorial_loop 

    mov rcx, 10        
    mov rdi, buffer + 2 

convert_loop:
    xor rdx, rdx       
    div rcx            
    add dl, '0'        
    mov [rdi], dl      
    dec rdi            
    test rax, rax      
    jnz convert_loop   

    mov rax, 1         
    mov rdi, 1         
    mov rsi, buffer    
    mov rdx, 4         
    syscall            

    mov rax, 60        
    mov rdi, 0         
    syscall 
