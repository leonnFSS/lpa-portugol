algoritmo "Exercícios de Entrada e Saída"
// Função :
// Autor : Leonardo F.S.S
// Data : 25/03/2022
// Seção de Declarações
var
nome: literal 
numFilhos: inteiro
salarioBruto, salarioFinal: real
vendas, comissao: real

inicio
	escreval("*********************************************")
	escreval("     Exercício 4 - Vendas")
	escreval("*********************************************")
	escreval("")

	escreval("Informe: ")
	escreva("- nome do vendedor: ")
	leia(nome)
	escreva("- quantidade, em dinheiro, das vendas realizadas: ")
	leia(vendas)
	escreva("- salário fixo do vendedor: ")
	leia(salarioBruto)
	escreva("- percentual da comissão de venda [Forma decimal. Ex. 5% = 0.05]: ")
	leia(comissao)

	// Cálculos
	salarioFinal <- vendas * comissao + salarioBruto

	// Apresentando resultados
	escreval("")
	escreval("*** RESULTADOS ***")
	escreval("Salário final do vendedor ",nome,": ", salarioFinal:1:2)
fimalgoritmo