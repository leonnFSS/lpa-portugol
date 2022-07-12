algoritmo "Conceito Acadêmico"
  var nota : inteiro
 inicio
  nota <- randi(10)
escreva("nota: ",nota)

se ~(nota <> 100) entao
escolha nota  
   caso 3
   escreva("conceito D")
   caso 6
   escreva("conceito C")
   caso 8
   escreva("conceito B")
  caso 10
   escreva("conceito A")
   outrocaso 
   escreva("conceito E")
fimescolha
senao
se nota >= 3 e nota <= 5 entao
    escreva("conceito D")
senao
   se (nota=6) ou (nota=7) entao
       escreva("conceito C")
   senao
        se (nota=8) ou (nota= 9) entao
          escreva("conceito B")
        senao
          escreva("conceito A")
         fimse
   fimse
   senao
       escreva("conceito E")
fimse

fimse

fimalgoritmo