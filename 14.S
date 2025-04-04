section .data
    buffer db "00", 10  
    buffer_len equ 3    

section .text
    global _start

_start:
    mov rcx, 0         
    mov rbx, 1         

power_loop:

    push rcx

    mov rax, rbx       

    mov r8, 10         
    mov rdi, buffer + 1 
convert_loop:
    xor rdx, rdx       
    div r8             
    add dl, '0'        
    mov [rdi], dl      
    dec rdi            
    test rax, rax      
    jnz convert_loop   

    mov rsi, buffer    
    cmp rbx, 10        
    jl single_digit
    mov rdx, buffer_len 
    jmp print
single_digit:
    inc rsi            
    mov rdx, 2         

print:

    mov rax, 1         
    mov rdi, 1         
    syscall            

    pop rcx
    inc rcx            
    shl rbx, 1         
    cmp rcx, 6         
    jl power_loop      

    mov rax, 60        
    xor rdi, rdi       
    syscall            
