[extern main]

section .text
global __print
global _start
__print:
  mov rax, 1
  mov rdx, rsi
  mov rsi, rdi
  mov rdi, 1
  syscall
  ret
_start:
  pop rdi                       ; argc
  pop rsi                       ; argv[0]
  call main
  mov rdi, rax
  mov rax, 60
  syscall
