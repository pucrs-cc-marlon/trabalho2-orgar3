; Escreva um programa que percorre um vetor de 30 numeros 
; e apresenta ao ﬁnal de sua execucao o menor e o maior valor encontrado e a diferenca entre os mesmos.

main
	ldi	r1,0
	ldi	r6,space
	ldb	r4,r6
    
rep
	ldw	r2,vetsz
	slt	r3,r1,r2
	bez	r3,end

	ldi	r2,vet
	add	r2,r2,r1
	add	r2,r2,r1
	ldw	r3,r2

	; add	r3,111
	; stw	r3,r2

	add	r1,1

	ldw	sr,writei
	stw	r3,sr
    
	ldw	sr,writec
	stw	r4,sr

	bnz	r7,rep

end
	hcf


vetsz	30
vet	77 94 61 28 31 64 1 33 18 53 85 19 56 46 55 23 43 50 42 91 21 72 2 37 82 22 74 15 69 63
writei	0xf002
writec	0xf000
space   "-"