algoritmo "Exercícios de Entrada e Saída"
// Função :
// Autor : Leonardo F.S.S
// Data : 25/03/2022
// Seção de Declarações
var
	raio, altura: real
	
inicio
	escreval("*********************************************")
	escreval("     Exercício 2 - Volume do Cilíndro")
	escreval("*********************************************")
	escreval("")

	// PI é uma constante já implementada em Portugol  =~ 3.14152
	escreva("Digite o valor do raio: ")
	leia(raio)
	escreva("Digite o valor da altura da caixa: ")
	leia(altura)

	escreval("")
	escreval("*** RESULTADOS ***")
	escreval("O volume da caixa cilíndrica é ", PI * raio^2 * altura)
fimalgoritmo