algoritmo "Adivinhação 3"
var palpite, num_secreto, i, placarU, placarM :inteiro
inicio
placarU <- 0
placarM <- 0
repita
   i <- 0
   num_secreto <- randi(20)
   repita 
      escreval ("Informe 1 número inteiro [entre 0 e 20]. ")
      leia(palpite)   
      se palpite= num_secreto entao
         escreva("Você acertou!")
         placarU <-placarU+1
      senao
         escreval("Você não acertou!")
         i <- i + 1
         placarM <- placarM+1
      fimse
   ate (i = 3) | (palpite=num_secreto)
   escreval("Número secreto: ", num_secreto)
   escreval("PONTOS")
   escreval("Usuário:", placarU)
   escreval("Máquina:", placarM)
ate placarU=5 | placarM=5
escreval("PLACAR FINAL")
escreval("Usuário: ", placarU)
escreval("Máquina: ", placarM)
fimalgoritmo