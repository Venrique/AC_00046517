	org	100h

section	.text
	call	texto
	call	frase
	call	frased
	call	fraset
	call	frasec
	call	espera

	int	20h

texto:	mov	ah, 00h
	mov	al, 03h
	int	10h
	ret

m_cur:	mov	ah, 02h
	mov	dx, di
	add	dl, 15d
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

;----------------FRASE 2--------------------------

m_curd:	mov	ah, 02h
	mov	dx, di
	add	dl, 35d
	mov	dh, 10d
	mov	bh, 0h
	int	10h
	ret

writed:	mov	ah, 09h
	mov	al, cl
	mov	bh, 0h
	mov	bl, 00001111b
	mov	cx, 1h
	int	10h
	ret

frased:	mov	di, 0d
	
lopid:	mov	cl, [dos+di]
	call	m_curd
	call	writed
	inc	di
	cmp	di, lend
	jb	lopid
	ret

;----------------FRASE 3--------------------------

m_curt:	mov	ah, 02h
	mov	dx, di
	add	dl, 5d
	mov	dh, 15d
	mov	bh, 0h
	int	10h
	ret

writet:	mov	ah, 09h
	mov	al, cl
	mov	bh, 0h
	mov	bl, 00001111b
	mov	cx, 1h
	int	10h
	ret

fraset:	mov	di, 0d
	
lopit:	mov	cl, [tres+di]
	call	m_curt
	call	writet
	inc	di
	cmp	di, lent,
	jb	lopit
	ret

;----------------FRASE 3--------------------------

m_curc:	mov	ah, 02h
	mov	dx, di
	add	dl, 50d
	mov	dh, 24d
	mov	bh, 0h
	int	10h
	ret

writec:	mov	ah, 09h
	mov	al, cl
	mov	bh, 0h
	mov	bl, 00001111b
	mov	cx, 1h
	int	10h
	ret

frasec:	mov	di, 0d
	
lopic:	mov	cl, [cuatro+di]
	call	m_curc
	call	writec
	inc	di
	cmp	di, lenc,
	jb	lopic
	ret

espera:	mov	ax, 0000h
	int	16h
	ret

section	.data

uno	db	"El pasado es historia..."
len	equ	$-uno
dos	db	"... El futuro es un misterio"
lend	equ	$-dos
tres	db	"Pero el hoy es un obsequio"
lent	equ	$-tres
cuatro	db	"Por eso se llama presente."
lenc	equ	$-cuatro


