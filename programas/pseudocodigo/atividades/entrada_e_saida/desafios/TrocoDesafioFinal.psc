algoritmo "Desafio do Troco"
  var consumo, pagamento, troco, nota50, nota20, nota10, nota5, nota2, moeda1, centavo50, centavo10, centavo: inteiro
  var consReal, pagReal, trocReal: real
 inicio
consumo <-    randi(50000)
pagamento <-randi(100000)

escreval("*********************************************") escreval("                          Desafio 2 - Troco")          escreval("*********************************************")       escreval("Informe os seguintes valores ($) [escreva os centavos sem usar vírgula] :")
             escreva("Conta total: ", consumo/100)
             //leia(consumo) 

             escreva("Valor Pago: ", pagamento/100)
            // leia(pagamento)

             se consumo > pagamento entao

                escreval("         ***** AVISO *****")
                escreval("Pagamento insuficiente para cobrir o valor consumido!")
                escreval("Ainda falta(m): $",( consumo - pagamento)/100)                       escreval("*********************************************")
             senao

                troco <- pagamento - consumo
                 centavo <- troco
                 consReal <- consumo /100
                 pagReal <- pagamento /100
                 trocReal<- troco / 100

                nota50 <- centavo div 5000
                centavo <- centavo  - nota50 * 5000
                nota20 <- centavo div  2000
                centavo <- centavo - nota20 * 2000
                nota10 <- centavo div 1000
                centavo <- centavo - nota10 * 1000
                nota5 <- centavo div 500
                centavo <- centavo - nota5 * 500
                nota2 <- centavo div 200
                centavo <- centavo - nota2 * 200
                moeda1 <- centavo div 100
               centavo <- centavo - moeda1 *100
               centavo50 <- centavo div 50
               centavo <- centavo - centavo50 * 50
               centavo10 <- centavo div 10
               centavo <- centavo - centavo10 * 10

                escreval("         ***** CONTA *****")
                escreval("Pagamento:    ",pagReal)
                escreval("Valor:        ", consReal)
                escreval("Troco:        ", trocReal)
                escreval("         *****                *****")
                 escreval("         ***** TROCO *****")
                escreval("Quantidade de notas e moedas no troco:")

Se nota50 <> 0 entao
      escreval("nota(s) de $50: ",nota50)
fimse
se nota20 <> 0 entao
      escreval("nota(s) de $20: ",nota20)
 fimse
se nota10 <> 0 entao
      escreval("nota(s) de $10: ",nota10)
fimse
se nota5 <> 0    entao
     escreval("nota(s) de $ 5: ",nota5)
fimse
se nota2 <> 0 entao
      escreval("nota(s) de $ 2: ",nota2)
fimse
se moeda1 <> 0 entao
      escreval("moeda(s) de $ 1: ",moeda1)
fimse
se       centavo50 <> 0 entao
      escreval("moeda(s) de $ 0.50: ", centavo50)
fimse
se         centavo10 <> 0 entao
       escreval("moeda(s) de $ 0.10: ",centavo10)
fimse
se        centavo <> 0 entao
       escreval("moeda(s) de $ 0.01: ", centavo)
fimse
escreval("*********************************************")
fimse
fimalgoritmo
