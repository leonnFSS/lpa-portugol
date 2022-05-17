algoritmo "Exercícios de Entrada e Saída"
// Função :
// Autor : Leonardo F.S.S
// Data : 25/03/2022
// Seção de Declarações

var a, b, c : real

inicio
	escreval("*********************************************")
	escreval("     Exercício 1 - Área de Polígonos")
	escreval("*********************************************")
	escreval("")

	// Captando os dados
	escreva("Digite um número para a: ")
	leia(a)
	escreva("Digite um número para b: ")
	leia(b)
	escreva("Digite um número para c: ")
	leia(c)

	// Processando e entregando resultados
	escreval("")
	escreval("*** RESULTADOS ***")
	escreval("Área do trapézio: ", ((a+b)/2)*c)
	escreval("Área do quadrado: ", b^2)
	escreval("Área do cubo: ", 6*c^2)

fimalgoritmo
