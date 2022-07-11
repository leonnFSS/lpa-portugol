
// Função :
// Autor :
// Data : 01/05/2022
// Seção de Declarações 

funcao par_impar()
var num, submenu: inteiro

repita
   limpatela
   escreval("***************************************")
   escreval("     Exercício 1 - ÍmPar & Par")
   escreval("***************************************")
   escreval("")
   escreva("Informe um número inteiro qualquer: ")
   leia(num)
   escreval("")
   se num< 0 entao
      escreval("Este número não é positivo.")
   senao
        se num%2=0 entao
           escreval("par.")
        senao
        escreval("ímpar.")
        fimse
   fimse

   escreval("***************************************")
   escreval("Digite: ")
   escreval("0 - voltar ao menu de atividades")
   escreval("1 - testar outros valores")
   escreva("Sua escolha foi: ")
   leia(submenu)
   escreval("")
ate submenu = 0
 escreval("")
 escreval("")
 escreva("Digite F9 para voltar o MENU INICIAL")
 pausa
fimfuncao

funcao financiamento()
var salario, emprestimo: real
var submenu: inteiro

repita
   limpatela
   escreval("***************************************")
   escreval("     Exercício 2 - Financiamento")
   escreval("***************************************")
   escreval("")
   escreva("Informe o salário do cliente: ")
   leia(salario)
   escreva("Informe o valor do empréstimo pretendido: ")
   leia(emprestimo)
   escreval("")
   se salario * 5 >= emprestimo entao
      escreval("Financiamento concedido.")
   senao
      escreval("Financiamento negado.")
   fimse

   escreval("")
   escreval("Obrigado por nos consultar.")

   escreval("***************************************")
   escreval("Digite: ")
   escreval("0 - voltar ao menu de atividades")
   escreval("1 - testar outros valores")
   escreva("Sua escolha foi: ")
   leia(submenu)
   escreval("")
ate submenu = -1
 escreval("")
 escreval("")
 escreva("Digite F9 para voltar o MENU INICIAL")
fimfuncao

funcao conceito_escolar()
var nota, submenu: inteiro

repita
   limpatela
   escreval("***************************************")
   escreval("     Exercício 3 - Conceito Escolar")
   escreval("***************************************")
   escreval("")
   escreva("Informe a nota do aluno [valor inteiro apenas]: ")
   leia(nota)
   escreval("")

   escolha nota
   caso 0,1,2
       escreval("Conceito E")
   caso 3,4,5
       escreval("Conceito D")
   caso 6,7
       escreval("Conceito C")
   caso 8,9
       escreval("Conceito B")
   caso 10
       escreval("Conceito A")
   outrocaso
       escreval("Conceito Ínvalido")
   fimescolha

   escreval("***************************************")
   escreval("Digite: ")
   escreval("0 - voltar ao menu de atividades")
   escreval("1 - testar outros valores")
   escreva("Sua escolha foi: ")
   leia(submenu)
   escreval("")
ate submenu = 0
 escreval("")
 escreval("")
 escreva("Digite F9 para voltar o MENU INICIAL")
fimfuncao

funcao ajuste_salarial()
var submenu: inteiro
var salario, novosalario: real

repita
   limpatela
   escreval("***************************************")
   escreval("     Exercício 4 - Ajuste Salarial")
   escreval("***************************************")
   escreval("")
   escreva("Informe o salário: $ ")
   leia(salario)
   escreval("")

   se (salario >= 0) e (salario <= 400) entao
      novosalario <- salario * 1.15
   senao
      se (salario>400) e (salario<=700) entao
         novosalario <- salario * 1.12
      senao
         se (salario>700) e (salario<=1000) entao
            novosalario <- salario * 1.10
         senao
              se (salario>1000) e (salario<=1800) entao
                 novosalario <- salario * 1.07
              senao
                 se (salario>1800) e (salario<=2500) entao
                    novosalario <- salario * 1.04
                 senao
                    novosalario <- salario
                 fimse
              fimse
         fimse
      fimse
   fimse
   
   escreval("salário: $", salario:2:2)
   escreval("reajuste: %", 100*((novosalario - salario)/salario):2:2)
   escreval("novo salário: $", novosalario:2:2)

   escreval("***************************************")
   escreval("Digite: ")
   escreval("0 - voltar ao menu de atividades")
   escreval("1 - testar outros valores")
   escreva("Sua escolha foi: ")
   leia(submenu)
   escreval("")
ate submenu = 0
 escreval("")
 escreval("")
 escreva("Digite F9 para voltar o MENU INICIAL")
fimfuncao

funcao ordenacao_numerica()
var opcao, submenu : inteiro
var a, b, c, maior, menor, meio: real

repita
   limpatela
   escreval("***************************************")
   escreval("     Desafio 1 - Ordenação numérica")
   escreval("***************************************")
   escreval("")
   // captação de dados
   escreva("Digite um número real qualquer: ")
   leia(a)
   escreva("Digite outro número real qualquer: ")
   leia(b)
   escreva("Digite outro número real qualquer: ")
   leia(c)

   // Captação aleatória e automática para testes
   //  a <- randi(5)
   //  b <- randi(5)
   //  c <- randi(5)
   // opcao <- randi(3)

   //processamento para A maior
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
   // Para B maior
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
   // Para C maior
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
   escreval("")
   escreval("")
   escreval("Escolha uma opção abaixo:")
   escreval("1 - ordenação crescente")
   escreval("2 - ordenação decrescente")
   escreval("3 - ordenação triangular")
   escreval("")
   escreva("Sua escolha foi: ")
   leia(opcao)

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
   escreval("")
   escreval("***************************************")
   escreval("Digite: ")
   escreval("0 - voltar ao menu de atividades")
   escreval("1 - testar outros valores")
   escreva("Sua escolha foi: ")
   leia(submenu)
   escreval("")
ate submenu = 0
 escreval("")
 escreval("")
 escreva("Digite F9 para voltar o MENU INICIAL")
fimfuncao

algoritmo "Estruturas Condicionais"
var menu: inteiro
var saida: caracter
inicio
repita
limpatela
        escreval("**********************************************************")
        escreval("*                                                        *")
        escreval("*         LÓGICA DE PROGRAMAÇÃO E ALGORIMOS              *")
        escreval("*                                                        *")
        escreval("*        Exercícios de Estruturas Condicionais           *")
        escreval("*                                                        *")
        escreval("**********************************************************")
        escreval("")
        escreval("")
        escreval("Digite uma opções de 0 a 5 conforme sugerido abaixo:")
        escreval("      1 - para atividade 1: Ímpar & Par.")
        escreval("      2 - para atividade 2: Financiamento.")
        escreval("      3 - para atividade 3: Conceito Escolar.")
        escreval("      4 - para atividade 4: Ajuste Salarial.")
        escreval("      5 - para desafio 1: Ordem dos Números.")
        escreval("")
        escreval("      0 - para terminar este programa.")
        escreval("")
        escreval("")
        escreva("Você escolheu: ")
        leia(menu)
        limpatela

    escolha(menu)
           caso 1
             par_impar()
           caso 2
             financiamento()
           caso 3
             conceito_escolar()
           caso 4
             ajuste_salarial()
           caso 5
             ordenacao_numerica()
           outrocaso
             escreval("Até logo!")
             saida <- "x"
        fimescolha
ate saida = "x"
fimalgoritmo