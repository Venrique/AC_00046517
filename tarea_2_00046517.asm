;EJERCICIO 1 
	org	100h

	MOV	ax, 4d
	MOV	bx, 6d
	ADD	ax, bx
	MOV	bx, 5d
	ADD	ax, bx
	MOV	bx, 1d
	ADD	ax, bx
	MOV	bx, 7d
	ADD	ax, bx

	MOV	bx, 5d
	DIV	bx

	MOV	cx, ax
	MOV	[200h], cx

	MOV	bl, "M"
	MOV	[202h], bl
	MOV	bl, "e"
	MOV	[203h], bl
	MOV	bl, "r"
	MOV	[205h], bl
	MOV	bl, "e"
	MOV	[206h], bl
	MOV	bl, "c"
	MOV	[207h], bl
	MOV	bl, "u"
	MOV	[208h], bl
	MOV	bl, "p"
	MOV	[209h], bl
	MOV	bl, "e"
	MOV	[20Ah], bl
	MOV	bl, "r"
	MOV	[20Bh], bl
	MOV	bl, "o"
	MOV	[20Ch], bl

;EJERCICIO 2

	MOV	ax, 4d
	MOV	[210h],ax
	MOV	bx, 1d
	MOV	cx, 2d

lupi:	MUL	cx
	CMP	ah, 0h
	JE	uno
	CMP	ah, 0h
	JNE	dos

uno:	MOV	[210h+bx], ax
	INC	bx
	CMP	bx, 16d
	JNE	lupi
	
dos:	MOV	[210h+bx], ax
	ADD	bx, 2d
	CMP	bx, 16d
	JNE	lupi

;EJERCICIO 3

	MOV	ax, 0d
	MOV	[220h], ax
	MOV	cx, 1d
	MOV	[221h], cx

	MOV	bx, 2d

lupita:	MOV	dx, cx
	ADD	cx, ax
	MOV	ax, dx
	CMP	ch, 0h
	JE	tres
	CMP	ch, 0h
	JNE	cuatro

tres:	MOV	[220h+bx], cx
	INC	bx
	CMP	bx, 16d
	JAE	fin
	CMP	bx, 16d
	JNE	lupita
	
cuatro:	MOV	[220h+bx], cx
	ADD	bx, 2d
	CMP	bx, 16d
	JAE	fin
	CMP	dx, 16d
	JNE	lupita

fin:	int	20h