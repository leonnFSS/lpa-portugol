algoritmo "Adivinhação 1"
var palpite, num_secreto : inteiro
inicio
escreval ("Informe 1 número inteiro [entre 0 e 20]. ")
leia(palpite)
num_secreto <- randi(20)
se palpite= num_secreto entao
   escreva("Você acertou!")
senao
   escreval("Você não acertou!")
   escreval("Número secreto: ", num_secreto)
fimse
fimalgoritmo