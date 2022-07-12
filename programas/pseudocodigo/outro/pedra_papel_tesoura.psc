algoritmo "Pedra-papel-tesoura"
   var jogada, jog_cpu,  : inteiro
 inicio
 
repita
escreval ("Digite um número para escolher sua jogada:")
escreval ("1 - pedra ")
escreval ("2 - papel")
escreval ("3 - tesoura ")
escreva("Você escolheu: ")
leia (jogada)

//Mostrando as escolhas de cada jogador
escolha jogada 
caso 1
escreval("Você jogou pedra.")
caso 2
escreval("Você jogou papel.")
caso 3
escreval("Você jogou tesoura")
outrocaso
   escreval ("Jogada só pode ser os números 1, 2 3.")
fimescolha

ate (jogada >= 1) e (jogada <= 3)

jog_cpu <- randi(2)+1

escolha jog_cpu 
caso 1
escreval("Computador jogou pedra.")
caso 2
escreval("Computador jogou papel.")
caso 3
escreval("Computador jogou tesoura")
outrocaso
escreval ("")
fimescolha

//Definindo resultado
se jogada = jog_cpu entao
   escreva("Empate")
senao
   se ((
(jog_cpu = 2) e (jogada=1)) |
((jog_cpu = 1) e (jogada=3)) |
((jog_cpu = 3) e (jogada=2))
)
 entao
      escreva ("Derrota do usuário")
   senao
      escreva( "Vitória do usuário")
   fimse
fimse


 fimalgoritmo
