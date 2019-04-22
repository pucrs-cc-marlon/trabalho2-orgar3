; Problema 2: Dados dois strings (um contendo uma frase e outro contendo
; uma palavra), determine o numero de vezes que a palavra ocorre na frase.


; O algoritmo realiza um loop sobre a palavra enquanto
; houver 
main
	ldi	r3,phrase
	xor	r6,0,0

repeat
	ldi	r1,word

	ldb	r2,r1
	ldb	r4,r3

	add	r1,1
	add	r3,1

	bnz	r4,equal
	bez	r4,init_output

equal
	sub	r5,r2,r4
	bez	r5,repeat_word
	bnz	r7,repeat

repeat_word
	ldb	r2,r1
	ldb	r4,r3

	add	r1,1
	add	r3,1

	bnz	r2,equal
	add	r6,1
	bnz	r7,repeat

init_output
	ldi	r4,mess
	ldw	sr,writec
	bnz	r7,print_message
	
print_message
	ldb	r2,r4
	stw	r2,sr
	add	r4,1
	bnz	r2,print_message
	bnz	r7,fim

fim
	ldw	sr,writei
	stw	r6,sr
	hcf

phrase	"Marlon, Eurico e Allan, Marlon"
word	"Marlon"
mess	"Qtd palavras: "
writei	0xf002
writec	0xf000