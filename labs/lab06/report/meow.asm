;--------------------------------
; Программа вычисления функции
;--------------------------------
%include 'in_out.asm'
SECTION .data
msg: DB 'Введите x: ',0
rem: DB 'F(x) = ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`
;_____________________

xor edx,edx
mov ebx,3
div ebx
add eax,5
mov edx,7
mul edx
mov edx,eax
;______________________

mov eax,rem
call sprint
mov eax,edx
call iprintLF
call quit
