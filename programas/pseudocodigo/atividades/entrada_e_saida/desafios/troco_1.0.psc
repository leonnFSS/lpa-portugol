algoritmo "Troco versão 1.0"
// Função :
// Autor :
// Data : 29/03/2022
// Seção de Declarações

var consumo, pagamento,troco: real
var restante, tempTroco, nota50, nota20, nota10, nota5, nota2, moeda1, centavo50, centavo10, restCentavo: inteiro
inicio
escreval("*********************************************")
escreval("     Desafio 2 - Troco")
escreval("*********************************************")
escreval("")

escreval("Informe os seguintes valores ($) [apenas números inteiros são válidos] :")
escreva("Conta total: ")
leia(consumo)
escreva("Valor Pago: ")
leia(pagamento)

troco <- pagamento - consumo

tempTroco <- int(troco)
restCentavo <- int((troco - int(troco)) * 100)

nota50 <- tempTroco \ 50
restante <- tempTroco - nota50 * 50
nota20 <- restante \ 20
restante <- restante - nota20 * 20
nota10 <- restante \ 10
restante <- restante - nota10 * 10
nota5 <- restante \ 5
restante <- restante - nota5 * 5
nota2 <- restante \ 2
restante <- restante - nota2 * 2
moeda1 <- restante

centavo50 <- restCentavo \ 50
restCentavo <- restCentavo - centavo50 * 50
centavo10 <- restCentavo \ 10
restCentavo <- restCentavo - centavo10 * 10

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
escreval("moeda(s) de $ 1:",moeda1)
escreval("moeda(s) de $ 0.50:",centavo50)
escreval("moeda(s) de $ 0.10:",centavo10)
escreval("moeda(s) de $ 0.01:",restCentavo)
fimalgoritmo
