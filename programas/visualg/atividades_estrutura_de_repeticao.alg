algoritmo "Estruturas Repetição "
// Função :
// Autor :
// Data : 17/05/2022
// Seção de Declarações 

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

procedimento  intervalos
var num,  int0, int1, int2, int3: inteiro
inicio
repita
   limpatela
   int0 <- 0
   int1 <- 0
   int2 <- 0
   int3 <- 0
   escreval("*********************************************")
   escreval("     Exercício 1 - Intervalos de 25")
   escreval("*********************************************")
   escreval("")
   escreval("Quando desejar encerrar o experimento digite qualquer:")
   escreval("número negativo ou maior que 100.")
   escreval("")
   
   repita
      escreva("Informe um número inteiro qualquer: ")
      leia(num)
      
      se (num < 0) ou (num > 100) entao
      senao
         se (num>= 0)  e (num<=25) entao
            int0 <- int0 + 1
         senao
              se (num> 25)  e (num<=50) entao
                 int1 <- int1 + 1
              senao
                   se (num>50)  e (num<=75) entao
                      int2 <- int2 + 1
                   senao
                        se (num> 75)  e (num<=100) entao
                           int3 <- int3 + 1
                        fimse
                   fimse
              fimse
         fimse
      fimse

   ate (num < 0) ou (num > 100)
   escreval("---------------------------------------------")
   escreval("RESULTADOS ")
   escreval("Valores entre: ")
   escreval(" 0 e 25: ", int0)
   escreval("26 e 50: ", int1)
   escreval("51 e 75: ", int2)
   escreval("76 e 100: ", int3)
   escreval()
ate volta_menu_principal()
fimprocedimento

procedimento demografia
var nome, sexo, mais_alta, sexo_mais_alta: caracter
    peso, altura, media_peso, t_peso,maior_altura : real
    i, total, t_homem, t_mulher, aux: inteiro
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Exercício 2 - Estudo Demográfico")
   escreval()
   escreval("Preenchimento manual de dados")
   escreval("*********************************************")

   i <- 250
   total <- 0
   t_homem <- 0
   t_mulher <- 0
   t_peso <- 0
   altura <- 0
   maior_altura <- 0
   
   escreval("")
   escreval("Informe os seguintes dados da pessoa: ")
   escreval("")
   enquanto i > 0 faca
      // captando dados da população
      escreva("nome: ")
      leia(nome)
      escreva("altura [em cm]: ")
      leia(altura)
      escreva("peso [em kg]: ")
      leia(peso)
      escreva("sexo [F para feminino ou M para masculino]: ")
      leia(sexo)
      escreval("")

      // processamento
      total <- total + 1
      t_peso <- t_peso + peso

      se sexo= "m" entao
         t_homem <- t_homem +1
      senao
         t_mulher <- t_mulher + 1
      fimse

      se altura > maior_altura entao
         maior_altura <- altura
         mais_alta <- nome
         sexo_mais_alta <- sexo
      fimse
      i <- i - 1
   fimenquanto
   escreval()
   escreval("Total de pessoas: ", total)
   escreval("Total de mulheres: ", t_mulher, ", ", 100*(t_mulher/total):2:2 ,"%.")
   escreval("Total de homens: ", t_homem, ", ", 100*(t_homem/total):2:2 ,"%.")
   escreval("Peso médio da pessoas: ", (t_peso/total):2:2)
   escreval("Pessoa mais alta: ", mais_alta)
   escreval("Sexo da pessoa mais alta: ", sexo_mais_alta)
   escreval("Maior altura: ", maior_altura:2:2)
   escreval("")
 ate volta_menu_principal()
fimprocedimento

procedimento demografia_automatica
var nome, sexo, mais_alta, sexo_mais_alta: caracter
    peso, altura, media_peso, t_peso,maior_altura : real
    i, total, t_homem, t_mulher, aux: inteiro
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Exercício 2B - Estudo Demográfico")
   escreval()
   escreval("Preenchimento automático de dados")
   escreval("*********************************************")
   escreval("")
   i <- 250
   total <- 0
   t_homem <- 0
   t_mulher <- 0
   t_peso <- 0
   altura <- 0
   maior_altura <- 0

   escreva("Gerando um  população: ")
   enquanto i > 0 faca
      // gerando da população
      peso <- 1000*(randi(150)+30)/1000
      altura <- (100*(randi(200))/10000)+ 0.3
      aux <- randi(12)
      eco on
      aleatorio on
      leia(nome)
      aleatorio off
      eco off

      se aux > 5 entao
         sexo <- "f"
      senao
         sexo <- "m"
      fimse

      // processamento
      total <- total + 1
      t_peso <- t_peso + peso
      
      se sexo= "m" entao
         t_homem <- t_homem +1
      senao
         t_mulher <- t_mulher + 1
      fimse
      
      se altura > maior_altura entao
         maior_altura <- altura
         mais_alta <- nome
         sexo_mais_alta <- sexo
      fimse
      i <- i - 1
   fimenquanto
   escreval()
   escreval("Total de pessoas: ", total)
   escreval("Total de mulheres: ", t_mulher, ", ", 100*(t_mulher/total):2:2 ,"%.")
   escreval("Total de homens: ", t_homem, ", ", 100*(t_homem/total):2:2 ,"%.")
   escreval("Peso médio da pessoas: ", (t_peso/total):2:2)
   escreval("Pessoa mais alta: ", mais_alta)
   escreval("Sexo da pessoa mais alta: ", sexo_mais_alta)
   escreval("Maior altura: ", maior_altura:2:2)
   escreval()
 ate volta_menu_principal()
fimprocedimento

procedimento numero_perfeito
var num, iterador, contador, perfeito, divisor, limite: inteiro
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Exercício 3 - Número perfeito")
   escreval("*********************************************")
   escreval("")
   // O exercício pede os 4 primeiros números
   escreva("Informe quantos números perfeitos deseja encontrar: ")
   leia(limite)
   perfeito <- 0
   iterador <- 2
   cronometro on  // medindo quanto tempo será gasto para calcular todos números

   enquanto perfeito < limite faca
    num <- int(2^iterador - 1)   //número Mersenne: n1 = M1 = (2^1)-1;  M2 = (2^2)-1
    contador <- 1
    divisor <- 0
    // Descobrindo se num é número primo
    enquanto num >= contador faca
       se num % contador = 0 entao
          divisor <- divisor + 1
       fimse
       contador <- contador + 1
    fimenquanto
    
    se (divisor = 2) entao
    // Se o número Mersenne é primo então ele gera um número perfeito
    // Nperfeito = numMersenne * 2^(n - 1)
      perfeito <- perfeito + 1
      escreval(perfeito," - ",  num * 2^(iterador-1))
    fimse
    iterador <- iterador + 1
   fimenquanto
   cronometro off
ate volta_menu_principal()
fimprocedimento

procedimento   divisores
var divisor, contador, m, fatorial, soma: inteiro
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Exercício 4 - Divisores")
   escreval("*********************************************")
   escreval("")
   repita
      divisor <- 0
      fatorial <- 1
      soma <- 0

      escreva("Informe um número positivo: ")
      leia(m)
      escreval()

      //processamento
      para contador de 1 ate m  faca
         se m%2 = 0 entao
            se m%contador = 0 entao
               divisor <- divisor + 1
            fimse
         senao
            se m < 12 entao
               fatorial <- fatorial * contador
            senao
               soma <- soma + contador
            fimse
         fimse
      fimpara

      // resultados
      escreva("O número: ", m)
      escreva(" é ")
      se m%2 = 0 entao
         escreva("par, com ")
         escreval(divisor," divisor(es).")
      senao
         escreval("ímpar.")
         se m < 12 entao
            escreval("fatorial: ", fatorial)
         senao
            escreval("soma de seus divisores é", soma)
         fimse
      fimse
      escreval()
      escreval("Número negativo sairá desta atividade.")
      escreval()
   ate m < 0
ate volta_menu_principal()
fimprocedimento

procedimento   propriedades
var contador,divisor, fatorial, i, limite: inteiro
 primo: logico
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Exercício 5 - Tabelas de Propriedades")
   escreval("*********************************************")
   escreval("")
   escreva("Informe o número de números que devem ser avaliados: ")
   leia(limite)
   
   se limite > 12 entao
      escreval("")
      escreval("NOTA 1")
      escreval("Devido a limitação de recursos serão calculados ")
      escreval("os fatoriais apenas para os 12 primeiros números.")
   fimse
   
   se limite > 99 entao
      limite <- 99
      escreval("")
      escreval("NOTA 2")
      escreval("Devido a limitação de recursos a tabela mostrará")
      escreval("apenas os ", limite," primeiros números.")
   fimse

   escreval("")
   escreval("")
   escreval("  #     Quadr.      Cubo   fatorial  divisores  primo")
   //processamento
   para contador de 1 ate limite  faca
      fatorial <- 1
      divisor <- 0

      se contador <= 12 entao
         para i de 1 ate contador faca
           fatorial <- fatorial * i
         fimpara
      fimse

      para i de 1 ate contador faca
           se contador%i = 0 entao
                divisor <- divisor + 1
           fimse
      fimpara
      
      se divisor <= 2 entao
         primo <- verdadeiro
      senao
         primo <- falso
      fimse
      escreva(contador:3,"      ", (contador^2):5,"   ",(contador^3):7,"    ",fatorial:9,"      ",  divisor:2,"     ")
      se primo entao
         escreval("sim")
      senao
       escreval("não")
      fimse

      se contador%20 = 0 entao
          escreval("")
          escreval("  #     Quadr.      Cubo   fatorial  divisores  primo")
      fimse
   fimpara
ate volta_menu_principal()
fimprocedimento

procedimento mmc_mdc
var a, b, mmc, mdc, mma, mmb, i: inteiro
inicio
repita
   limpatela
   escreval("*********************************************")
   escreval("     Desafio 1 - MDC e MMC")
   escreval("*********************************************")
   escreval("")
   // captação de dados
   escreva("Digite um número inteiro qualquer: ")
   leia(a)
   escreva("Digite outro número inteiro qualquer: ")
   leia(b)
   
  //MMC
   mmc <- 1
   mdc <- 1
   mma <- a
   mmb <- b
   i <- 1
  se (mma = 0) ou (mmb = 0) entao
     mmc <- 0
  senao
     enquanto mma+mmb<>2 faca
          se mma%i = 0 entao
             mma <- int(mma / i)
             mmc <- mmc * i
          fimse
          se mmb%i = 0 entao
             mmb <- int(mmb / i)
             mmc <- mmc * i
          fimse
          i <- i + 1
     fimenquanto
  fimse

   // MDC
   mma <- a
   mmb <- b
  para i de 1 ate a faca
       se (mma%i = 0) e (mmb%i = 0) entao
           mdc <- i
       fimse
  fimpara
   // Resultado
   escreval(a," e ", b," ", " MMC: ", mmc)
   escreval(a," e ", b," ", " MDC: ", mdc)
   escreval()
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
        escreval("*             LÓGICA DE PROGRAMAÇÃO E ALGORITMOS               *")
        escreval("*                                                              *")
        escreval("*            Exercícios de Estruturas de Repetição             *")
        escreval("*                                                              *")
        escreval("****************************************************************")
        escreval("")
        escreval("")

        escreval("Digite uma opções de 0 a 6 conforme sugerido abaixo:")
        escreval("   1 - atividade 1: Intervalos de 25.")
        escreval("   2 - atividade 2: Contagem demográfica.")
        escreval("   3 - atividade 3: Números perfeito.")
        escreval("   4 - atividade 4: Quantidade de Divisores.")
        escreval("   5 - atividade 5: Propriedades Matemáticas.")
        escreval("   6 - desafio 1: MMC e MDC.")
        escreval("   7 - atividade 2: Demografia[PREENCHIMENTO AUTOMÁTICO].")

        escreval("")
        escreval("      0 - para terminar este programa.")
        escreval("")
        escreval("")
        escreva("Você escolheu: ")
        leia(menu)

       escolha(menu)
              caso 1
                intervalos
              caso 2
                demografia
              caso 3
                numero_perfeito
              caso 4
                divisores
              caso 5
                propriedades
              caso 6
                mmc_mdc
              caso 7
                demografia_automatica
              outrocaso
                escreval("ATÉ LOGO!")
                saida <- "x"
       fimescolha
ate saida = "x"
fimalgoritmo
