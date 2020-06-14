org	100h

section	.text
	call	texto
	mov	dx, len
	mov	bx, msg
	call	w_strng
	xor 	si, si
	xor	ax, ax 	
lupi:	call 	kb
	cmp 	al, "$"
	je	operar
	sub	al, 30h
	mov	[200h+si],al
	inc 	si
	jmp 	lupi
	
operar:	xor	ax, ax
	mov	ax, [200h]
	add	ax, [201h]
	add	ax, [202h]
	add	ax, [203h]
	add	ax, [204h]
	mov	bl, 5d
	mov	ah, 00h
	div	bl
	mov	dx, lena
	mov	bx, msga
	cmp	al, 1h
	je	strng
	mov	dx, lenb
	mov	bx, msgb
	cmp	al, 2h
	je	strng
	mov	dx, lenc
	mov	bx, msgc
	cmp	al, 3h
	je	strng
	mov	dx, lend
	mov	bx, msgd
	cmp	al, 4h
	je	strng
	mov	dx, lene
	mov	bx, msge
	cmp	al, 5h
	je	strng
	mov	dx, lenf
	mov	bx, msgf
	cmp	al, 6h
	je	strng
	mov	dx, leng
	mov	bx, msgg
	cmp	al, 7h
	je	strng
	mov	dx, lenh
	mov	bx, msgh
	cmp	al, 8h
	je	strng
	mov	dx, leni
	mov	bx, msgi
	cmp	al, 9h
	je	strng
	mov	dx, lenj
	mov	bx, msgj
	cmp	al, 10h
	je	strng

texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

w_strng:mov	ah, 13h
	mov 	al, 01h 
	mov	bp, msg
	mov 	bh, 00h 
	mov	bl, 00001111b 
	mov	cx, len 
	mov	dl, 5h 
	mov	dh, 5h	
	push 	cs 
	pop	es  
	int 	10h
	ret

strng:	mov	ah, 13h
	mov 	al, 01h 
	mov	bp, bx
	mov 	bh, 00h 
	mov	bl, 00001111b 
	mov	cx, dx
	mov	dl, 10h 
	mov	dh, 10h	
	push 	cs 
	pop	es  
	int 	10h
	int	20h

kb: 	mov	ah, 00h
	int 	16h
	ret

section	.data
msg	db	"Ingrese ultimos 5 digitos de su carne"
len	equ	$-msg
msga	db	"Solo necesito el 0"
lena	equ	$-msga
msgb	db	"Aun se pasa"
lenb	equ	$-msgb
msgc	db	"Hay salud"
lenc	equ	$-msgc
msgd	db	"Me recupero"
lend	equ	$-msgd
msge	db	"En el segundo"
lene	equ	$-msge
msgf	db	"Peor es nada"
lenf	equ	$-msgf
msgg	db	"Muy bien"
leng	equ	$-msgg
msgh	db	"Colocho"
lenh	equ	$-msgh
msgi	db	"Siempre me esfuerzo"
leni	equ	$-msgi
msgj	db	"Perfecto solo Dios"
lenj	equ	$-msgj