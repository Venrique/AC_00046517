org 	100h

section .text

	call 	grafico	; Llamada a iniciar modo grafico 13h

	xor 	di, di   
lupa:	mov 	cx, 100d 
	add	cx, di	 
	mov	dx, 10d 
	call 	pixel
	inc 	di
	cmp 	di, 120d
	jne 	lupa

	xor	di, di
lupb:	mov 	cx, 100d ; Columna 
	mov	dx, 10d ; Fila
	add	dx, di	 ; Offset
	call 	pixel
	inc 	di
	cmp 	di, 160d
	jne 	lupb

	xor 	di, di   
lupc:	mov 	cx, 100d 
	add	cx, di	 
	mov	dx, 170d 
	call 	pixel
	inc 	di
	cmp 	di, 121d
	jne 	lupc

	xor 	di, di   
lupd:	mov 	cx, 220d 	 
	mov	dx, 140d
	add	dx, di 
	call 	pixel
	inc 	di
	cmp 	di, 30d
	jne 	lupd

	xor 	di, di   
lupe:	mov 	cx, 130d 
	add	cx, di	 
	mov	dx, 140d 
	call 	pixel
	inc 	di
	cmp 	di, 90d
	jne 	lupe

	xor 	di, di   
lupf:	mov 	cx, 130d 	 
	mov	dx, 105d
	add	dx, di 
	call 	pixel
	inc 	di
	cmp 	di, 35d
	jne 	lupf

	xor 	di, di   
lupg:	mov 	cx, 130d 
	add	cx, di	 
	mov	dx, 105d 
	call 	pixel
	inc 	di
	cmp 	di, 71d
	jne 	lupg

	xor 	di, di   
luph:	mov 	cx, 200d 	 
	mov	dx, 75d
	add	dx, di 
	call 	pixel
	inc 	di
	cmp 	di, 30d
	jne 	luph

	xor 	di, di   
lupi:	mov 	cx, 130d 
	add	cx, di	 
	mov	dx, 75d 
	call 	pixel
	inc 	di
	cmp 	di, 70d
	jne 	lupi

	xor 	di, di   
lupj:	mov 	cx, 130d 	 
	mov	dx, 40d
	add	dx, di 
	call 	pixel
	inc 	di
	cmp 	di, 35d
	jne 	lupj

	xor 	di, di   
lupk:	mov 	cx, 130d 
	add	cx, di	 
	mov	dx, 40d 
	call 	pixel
	inc 	di
	cmp 	di, 91d
	jne 	lupk

	xor 	di, di   
lupl:	mov 	cx, 220d 
	mov	dx, 10d
	add	dx, di 
	call 	pixel
	inc 	di
	cmp 	di, 30d
	jne 	lupl

	call 	kb	 ; Utilizamos espera de alguna tecla

	int 	20h

grafico:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	mov	ah, 0Ch
	mov	al, 1011b
	int 	10h
	ret

kb: 	mov	ah, 00h
	int 	16h
	ret

section .data