algoritmo "Estruturas Condicionais "
// Fun��o :
// Autor :
// Data : 01/05/2022
// Se��o de Declara��es 

funcao volta_menu_principal(): logico
var terminar: logico
 submenu: inteiro
inicio
   escreval("*********************************************")
   escreval("Digite: ")
   escreval("0 - voltar ao menu de atividades")
   escreval("1 - testar outros valores")
   escreva("Sua escolha foi: ")
   leia(submenu)
se submenu = 0 entao
   terminar <- verdadeiro
   escreval("")
   escreval("")
   escreval("Digite F9 para voltar ao MENU INICIAL")
   pausa
senao
   terminar <- falso
fimse
retorne terminar
fimfuncao

procedimento  par_impar
var num, submenu: inteiro
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Exerc�cio 1 - �mPar & Par")
   escreval("*********************************************")
   escreval("")
   escreva("Informe um n�mero inteiro qualquer: ")
   leia(num)
   escreval("")
   se num< 0 entao
      escreval("Este n�mero n�o � positivo.")
   senao
        se num%2=0 entao
           escreval("par.")
        senao
        escreval("�mpar.")
        fimse
   fimse
ate volta_menu_principal()
fimprocedimento

procedimento financiamento
var salario, emprestimo: real
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Exerc�cio 2 - Financiamento")
   escreval("*********************************************")
   escreval("")
   escreva("Informe o sal�rio do cliente: ")
   leia(salario)
   escreva("Informe o valor do empr�stimo pretendido: ")
   leia(emprestimo)
   escreval("")
   se salario * 5 >= emprestimo entao
      escreval("Financiamento concedido.")
   senao
      escreval("Financiamento negado.")
   fimse
   escreval("")
   escreval("Obrigado por nos consultar.")
ate volta_menu_principal()
fimprocedimento

procedimento conceito_escolar
var nota: inteiro
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Exerc�cio 3 - Conceito Escolar")
   escreval("*********************************************")
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
       escreval("Conceito �nvalido")
   fimescolha
ate volta_menu_principal()
fimprocedimento

procedimento   ajuste_salarial
var salario, novosalario: real
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Exerc�cio 4 - Ajuste Salarial")
   escreval("*********************************************")
   escreval("")
   escreva("Informe o sal�rio: $ ")
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
   escreval("sal�rio: $", salario:2:2)
   escreval("reajuste: %", 100*((novosalario - salario)/salario):2:2)
   escreval("novo sal�rio: $", novosalario:2:2)
ate volta_menu_principal()
fimprocedimento

procedimento   ordenacao_numerica
var opcao: inteiro
a, b, c, maior, menor, meio: real
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Desafio 1 - Ordena��o num�rica")
   escreval("*********************************************")
   escreval("")
   // capta��o de dados
   escreva("Digite um n�mero real qualquer: ")
   leia(a)
   escreva("Digite outro n�mero real qualquer: ")
   leia(b)
   escreva("Digite outro n�mero real qualquer: ")
   leia(c)

   // Capta��o aleat�ria e autom�tica para testes
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
   escreval("Escolha uma op��o abaixo:")
   escreval("1 - ordena��o crescente")
   escreval("2 - ordena��o decrescente")
   escreval("3 - ordena��o triangular")
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
         escreval("As op��es poss�veis s�o apenas 1, 2 e 3. ")
   fimescolha
   escreval("")
ate volta_menu_principal()
fimprocedimento

var
menu: inteiro
saida: caracter
inicio
repita
      limpatela
      escreval("****************************************************************")
      escreval("*                                                              *")
      escreval("*             L�GICA DE PROGRAMA��O E ALGORIMOS                *")
      escreval("*                                                              *")
      escreval("*            Exerc�cios de Estruturas Condicionais            *")
      escreval("*                                                              *")
      escreval("****************************************************************")
      escreval("")
      escreval("")
      escreval("Digite uma op��es de 0 a 5 conforme sugerido abaixo:")
      escreval("      1 - para atividade 1: �mpar & Par.")
      escreval("      2 - para atividade 2: Financiamento.")
      escreval("      3 - para atividade 3: Conceito Escolar.")
      escreval("      4 - para atividade 4: Ajuste Salarial.")
      escreval("      5 - para desafio 1: Ordem dos N�meros.")
      escreval("")
      escreval("      0 - para terminar este programa.")
      escreval("")
      escreval("")
      escreva("Voc� escolheu: ")
      leia(menu)
      limpatela
      escolha(menu)
        caso 1
          par_impar
        caso 2
          financiamento
        caso 3
          conceito_escolar
        caso 4
          ajuste_salarial
        caso 5
          ordenacao_numerica
        outrocaso
          escreval("At� logo!")
          saida <- "x"
      fimescolha
ate saida = "x"
fimalgoritmo
