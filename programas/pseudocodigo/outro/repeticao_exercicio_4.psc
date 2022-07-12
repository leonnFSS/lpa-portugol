algoritmo "Estruturas Repeti��o "
// Fun��o :
// Autor :
// Data : 17/05/2022
// Se��o de Declara��es 
var divisor, m, soma, fatorial, contador: inteiro 
 escreval("*********************************************") escreval("     Exercicio 4 - Divisores")  escreval("*********************************************")
   escreval("")
   repita
      divisor <- 0
      fatorial <- 1
      soma <- 0

      escreva("Informe um número positivo: ")
      leia(m)

      //processamento
      para contador de 1 ate m  faca
         se m%2 = 0 entao
            se m%contador = 0 entao
               divisor <- divisor + 1
            fimse
         senao
            se m < 12 entao
               fatorial <- fatorial * contador
            senao
               soma <- soma + contador
            fimse
         fimse
      fimpara

      // resultados
      escreva("O numero: ", m, " é ")
      se m%2 = 0 entao
         escreva("par, com ")
         escreval(divisor," divisor(es).")
      senao
         escreval("ímpar.")
         se m < 12 entao
            escreval("fatorial: ", fatorial)
         senao
            escreval("soma de seus divisores �
é", soma)
         fimse
      fimse
 
      escreval("Digitando um número negativo saira desta atividade.")    
   ate m < 0

fimalgoritmo 