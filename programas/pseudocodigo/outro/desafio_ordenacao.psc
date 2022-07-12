algoritmo "Ordenação de números"
  var opcao : inteiro
  var a, b, c, maior, menor, meio: real
 
inicio
// captação de dados
  a <- randi(5)
  b <- randi(5)
  c <- randi(5)
 opcao <- randi(3)

//processamento
se (a >= b) e (a >= c) entao
      maior <- a
      se  b > c entao
         meio <- b
         menor <- c
      senao
         meio <- c
         menor <- b
      fimse
fimse

 se (b >= a) e (b >= c) entao
       maior <- b
      se  a > c entao
         meio <- a
         menor <- c
      senao
         meio <- c
         menor <- a
       fimse
   fimse

se (c >= a) e (b <= c) entao
       maior <- c
      se  a > b entao
         meio <- a
         menor <- b
      senao
         meio <- b
         menor <- a
      fimse
fimse

//Apresentação de dados
escreval ("Sua escolha foi: ", opcao)
escolha opcao
   caso 1
      escreval("crescente:   ",menor,",   ",meio,",   ",maior)
   caso 2
      escreval("decrescente:   ",maior,",   ",meio,",   ",menor)  
   caso 3
      escreval("no meio:   ",menor,",   ",maior,",   ",meio)
   outrocaso
      escreval("As opções possíveis são apenas 1, 2 e 3. ")
fimescolha

fimalgoritmo