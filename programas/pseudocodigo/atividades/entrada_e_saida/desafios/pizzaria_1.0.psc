algoritmo "Pizzaria 1.0"
// Função :
// Autor : Leonardo FSS
// Data : 29/03/2022
// Seção de Declarações

var numChopes, numClientes, numPizzas, numCoberturas: inteiro
var contaPorCliente, conta, gorjeta, precoPizza,precoCobertura,precoChope: numerico

inicio
// Seção de Comandos
escreval("*********************************************")
escreval("     Desafio 1 - Pizzaria")
escreval("*********************************************")
escreval("")

escreval("*** Definição de preços dos produtos ***")
escreva("Qual será o preço da pizza grande: ")
leia(precoPizza)
escreva("Qual será o preço da cobertura de pizza: ")
leia(precoCobertura)
escreva("Qual será o preço da tulipa de chope: ")
leia(precoChope)
escreval("")
escreval("")

escreval("***Definição quantidades de cliente e produtos consumidos ***")
escreva("Informe quantidade de clientes: ")
leia(numClientes)
escreval("Informe as quantidades consumidas de: ")
escreva("chopes: ")
leia(numChopes)
escreva("pizzas: ")
leia(numPizzas)
escreva("coberturas: ")
leia(numCoberturas)

conta <- (numPizzas * precoPizza) + (numCoberturas * precoCobertura) + (numChopes * precoChope)
gorjeta <- conta * 0.10
contaPorCliente <- (conta + gorjeta) / numClientes

escreval("")
escreval("")
escreval("*** CONTA ***")
escreval("qtd  descrição   v.unit.(R$) Total(R$)")
escreval(numCoberturas," Coberturas    1,50    ",numCoberturas * 1.50 )
escreval(numChopes," Chopps        0,80    ",numChopes * 0.80 )
escreval(numCoberturas," Pizzas        10,00   ",numPizzas * 10.00 )
escreval("")
escreval(numClientes," Clientes")
escreval("")
escreval("Consumo: R$ ", conta:1:2)
escreval("Serviços 10% da conta ", gorjeta:1:2)
escreval("Valor Total: R$ ", conta + gorjeta:1:2)
escreval("")
escreval("Valor por cliente: R$ ",contaPorCliente:1:2)
fimalgoritmo
