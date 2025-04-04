section .data
  msg_even db "Even", 10
  len_even equ $ - msg_even

  msg_odd db "Odd", 10
  len_odd equ $ - msg_odd

section .text
  global _start

_start:
  mov eax, 6

  and eax, 1
  cmp eax, 0
  je is_even

  mov eax, 1
  mov edi, 1
  mov esi, msg_odd
  mov edx, len_odd
  syscall
  jmp done

is_even:
  mov eax, 1
  mov edi, 1
  mov esi, msg_even
  mov edx, len_even
  syscall

done:
  mov eax, 60
  xor edi, edi
  syscall
