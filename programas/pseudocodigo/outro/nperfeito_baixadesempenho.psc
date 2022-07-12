Algoritmo "numero perfeito"

var  i,j ,soma, perfeito:inteiro
 
Inicio
perfeito <-0
j <- 2

repita
   soma <- 0
   para i de 1 ate (j div 2) faca
      se j%i = 0 entao
         soma <-  soma +  i
      fimse
   fimpara

   se soma=j entao
     perfeito <- perfeito+ 1
     escreval(perfeito, " - ", j)
   fimse

j <- j+ 2
ate perfeito = 4
Fimalgoritmo
