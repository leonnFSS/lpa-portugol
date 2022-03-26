algoritmo "Exercícios de Entrada e Saída"
// Função :
// Autor : Leonardo F.S.S
// Data : 25/03/2022
// Seção de Declarações

var	nome: caracter
var	numFilhos: inteiro        
var	horasTrabalhadas, valorHoras, salarioHora, salarioBruto, salarioFinal: real
	
inicio
	escreval("*********************************************")
	escreval("     Exercício 3 - Salário")
	escreval("*********************************************")
	escreval("")

	escreva("Informe o nome do funcionário: ")
	leia(nome)
	escreva("Informe quantos filhos o funcionário tem: ")
	leia(numFilhos)
	escreva("Informe quantas horas o funcionário trabalhou: ")
	leia(horasTrabalhadas)
	escreva("Informe o valor do salário hora: ")
	leia(salarioHora)

	// Cálculos
	salarioBruto <- horasTrabalhadas * salarioHora
	salarioFinal <- salarioBruto * numFilhos * 0.03 + salarioBruto

	// Apresentando resultados
	escreval("")
	escreval("*** RESULTADOS ***")
	escreval("Salário final: ", salarioFinal:1:2)

fimalgoritmo