algoritmo "Exercícios de Entrada e Saída"
// Função :
// Autor : Leonardo F.S.S
// Data : 25/03/2022
// Seção de Declarações

var
nome: literal 
distancia, tempo, velocMedia: real

inicio
	escreval("*********************************************")
	escreval("     Exercício 5 - Distância e velocidade")
	escreval("*********************************************")
	escreval("")

	escreva("Informe o nome do piloto: ")
	leia(nome)
	escreva("Informe qual a distância percorrida por ele (em km): ")
	leia(distancia)
	escreva("Informe quantas horas ele gastou para cubrir tal distância (em h): ")
	leia(tempo)

	velocMedia <- distancia / tempo

	escreval("")
	escreval("*** RESULTADOS ***")
	escreval("A velocidade média do ",nome," foi ",velocMedia:1:2, " km/h.")
fimalgoritmo