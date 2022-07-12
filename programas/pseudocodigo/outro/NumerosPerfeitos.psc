algoritmo "Números perfeitos"
var  i, num, perfeito : inteiro
inicio

perfeito <- 0
i <- 2

enquanto perfeito < 4 faca
num <- 2^i - 1

se num=3 entao 
escreva(num*2^(i-1))
 perfeito<- perfeito + 1
fimse

se ~( (num%2=0) | (num%3=0) ) entao
 escreva(num*2^(i-1))
 perfeito<- perfeito + 1
fimse
i<-i+1
fimenquanto
fimalgoritmo
