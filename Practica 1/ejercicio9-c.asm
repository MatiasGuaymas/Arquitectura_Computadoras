org 1000h
CADENA DB 10010100b
N DB 2

org 3000h
ROTARIZQ: add al, al
adc al, 0
ret

org 4000h
ROTARIZQ_N: cmp ah, 0
jz FIN
call ROTARIZQ
dec ah
jmp ROTARIZQ_N
FIN: mov CADENA, al
ret

org 5000h
ROTARDER_N: mov cl, 8
sub cl, ah
mov ah, cl
call ROTARIZQ_N
ret

org 2000h
mov al, CADENA
mov ah, N
call ROTARDER_N
hlt
end