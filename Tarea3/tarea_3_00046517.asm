	org	100h

section	.text
	call	texto
	call	frase
	call	espera

	int	20h

texto:	mov	ah, 00h
	mov	al, 03h
	int	10h
	ret

m_cur:	mov	ah, 02h
	mov	dx, di
	add	dl, 10d
	mov	dh, 5d
	mov	bh, 0h
	int	10h
	ret

write:	mov	ah, 09h
	mov	al, cl
	mov	bh, 0h
	mov	bl, 00001111b
	mov	cx, 1h
	int	10h
	ret

frase:	mov	di, 0d
	
lopi:	mov	cl, [uno+di]
	call	m_cur
	call	write
	inc	di
	cmp	di, len
	jb	lopi
	ret

espera:	mov	ax, 0000h
	int	16h
	ret

section	.data

uno	db	"El ayer es historia..."
dos	db	"... El mañana es un misterio"
tres	db	"Pero el hoy es un obsequio"
cuatro	db	"Por eso se llama presente."
len	equ	$-uno
lend	equ	$-dos
lent	equ	$-tres
lenc	equ	$-cuatro
