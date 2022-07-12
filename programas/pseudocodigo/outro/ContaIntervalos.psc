algoritmo "Conta Intervalos"
var int0, int1, int2, int3, total,num : inteiro

 inicio
int0<- 0
int1<- 0
int2<- 0
int3<- 0
total <- 0

repita
escreva("digite um número inteiro qualquer: ")
//leia(num)  
num <- randi(101)
escreva (num)

total <-total+1

se (num>=0) e (num<=25) entao
int0 <- int0+1
fimse

se (num>=26) e (num<=50) entao
int1 <- int1+1
fimse

se (num>=51) e (num<=75) entao
int2 <- int2+1
fimse

se (num>=76) e (num<=100) entao
int3 <- int3+1
fimse

ate ~((num>=0) e (num<=100))

escreval("Intervalo         qtd")
escreval(" 0-25                  ", int0)
escreval("26-50                 ", int1)
escreval("51- 75                ", int2)
escreval("76-100               ", int3)
escreval("total                   ", total-1)
fimalgoritmo