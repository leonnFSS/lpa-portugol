algoritmo "Adivinhação 2"
var palpite, num_secreto, i :inteiro
inicio
i <- 0
num_secreto <- randi(20)
repita 
   escreval ("Informe 1 número inteiro [entre 0 e 20]. ")
   leia(palpite)   
   se palpite= num_secreto entao
      escreva("Você acertou!")
   senao
      escreval("Você não acertou!")
      i <- i + 1
fimse
ate (i = 3) | (palpite=num_secreto)
escreval("Número secreto: ", num_secreto)
fimalgoritmo