algoritmo "MDC ESTRUTURA DE REPETIÇÃO"
  var  rep, enq, i, div_e, div_r , div_p, a, b, menor: inteiro

 inicio
a <- randi(50)
b <- randi(30)

escreval("a:  ",a, "       b: ", b)

div_e <- 0
div_r <- 0
div_p <- 0

se a > b entao
    menor <- b
senao
   menor <- a
fimse

enq <- 1
enquanto enq <= menor faca
   se (a%enq=0) e (b%enq=0) entao
         div_e <- enq
   fimse
   enq <- enq+1
fimenquanto
escreval("mdc ENQUANTO:  ",div_e)

rep <- 1
repita
   se (a%rep=0) e (b%rep=0) entao
         div_r <- rep
   fimse
 rep <- rep+1
ate rep >  menor
escreval("mdc REPITA:  ",div_r)

i <- 1
para i de 1 ate menor  passo +1 faca
   se (a%i=0) e (b%i=0) entao
         div_p <- i
   fimse

fimpara
 escreval("mdc PARA:  ",div_p)

fimalgoritmo
