algoritmo "Troco versão 1.0 - Enxuto"
// Função :
// Autor :
// Data : 29/03/2022
// Seção de Declarações
var
consumo, pagamento,troco: real
nota50, nota20, nota10, nota5, nota2, moeda1, centavo50, centavo10, centavo: inteiro
inicio
escreval("*********************************************")
escreval("     Desafio 2 - Troco")
escreval("*********************************************")
escreval("")
escreval("Informe os seguintes valores ($):")
escreva("Conta total: ")
leia(consumo)
escreva("Valor Pago: ")
leia(pagamento)

troco <- pagamento - consumo

moeda1 <- int(troco)
centavo <- int((troco - int(troco)) * 100)

nota50 <- moeda1 \ 50
moeda1 <- moeda1 - nota50 * 50
nota20 <- moeda1 \ 20
moeda1 <- moeda1 - nota20 * 20
nota10 <- moeda1 \ 10
moeda1 <- moeda1 - nota10 * 10
nota5 <- moeda1 \ 5
moeda1 <- moeda1 - nota5 * 5
nota2 <- moeda1 \ 2
moeda1 <- moeda1 - nota2 * 2

centavo50 <- centavo \ 50
centavo <- centavo - centavo50 * 50
centavo10 <- centavo \ 10
centavo <- centavo - centavo10 * 10

escreval("")
escreval("")
escreval("***** CONTA *****")
escreval("")
escreval("Valor:        ", consumo)
escreval("Pagamento:    ",pagamento)
escreval("Troco:        ", troco)
escreval("")
escreval("Quantidade de notas e moedas no troco:")
escreval("nota(s) de $50: ",nota50)
escreval("nota(s) de $20: ",nota20)
escreval("nota(s) de $10: ",nota10)
escreval("nota(s) de $ 5: ",nota5)
escreval("nota(s) de $ 2: ",nota2)
escreval("moeda(s) de $ 1: ",moeda1)
escreval("moeda(s) de $ 0.50:",centavo50)
escreval("moeda(s) de $ 0.10:",centavo10)
escreval("moeda(s) de $ 0.01:",centavo)
fimalgoritmo
