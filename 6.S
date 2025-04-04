section .data
  buffer db 0, 10

section .text
  global _start

_start:
  mov rbx, 1

loop_start:
  mov al, bl
  add al, '0'
  mov [buffer], al

  mov rax, 1
  mov rdi, 1
  mov rsi, buffer
  mov rdx, 2
  syscall

  inc rbx
  cmp rbx, 5
  jle loop_start

  mov rax, 60
  mov rdi, 0
  syscall
