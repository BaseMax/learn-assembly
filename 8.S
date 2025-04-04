section .data
    buffer db '0','0',10    

section .text
    global _start

_start:
    mov rbx, 1         
    mov rax, 0         

sum_loop:
    add rax, rbx       
    inc rbx            
    cmp rbx, 10        
    jle sum_loop       

    mov rcx, 10        
    mov rdi, buffer + 1 

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
    mov rdx, 3         
    syscall            

    mov rax, 60        
    mov rdi, 0         
    syscall            
