algoritmo "Variáveis Compostas Homogêneas - Vetores"
// Função :
// Autor : Leonardo FSS
// Data : 22/05/2022
// Seção de Declarações

//*********************** FUNÇÕES ***********************
funcao volta_menu_principal(): logico
var terminar: logico
 submenu: inteiro
inicio
   gera_linha(TAM_SUBJAN)
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
//******************** PROCEDIMENTOS ********************
// COMPONENTES GRÁFICOS
procedimento gera_linha(numero_colunas: inteiro)
var linha: caracter
i: inteiro
inicio
para i de 1 ate numero_colunas faca
   linha <- linha + "*"
fimpara
escreval(linha)
fimprocedimento

procedimento centraliza_texto(texto: caracter; numero_colunas: inteiro)
var i, tam_texto, limite: inteiro
linha: caracter
inicio
tam_texto <- compr(texto)+1)\2
limite <- numero_colunas\2 - (compr(texto)+1)\2
linha <- "*"
para i de 1 ate limite-1 faca
   linha<-linha + " "
fimpara
escreva(linha,texto)
linha <- " "
para i de limite+tam_texto ate numero_colunas-2 faca
   linha<-linha + " "
fimpara
escreval(linha,"*")
fimprocedimento

// ATIVIDADES
procedimento  vetor_simples
var submenu, i: inteiro
primeiro: logico
a: vetor [1..10] de inteiro
inicio
repita
   limpatela
   gera_linha(TAM_SUBJAN)
   centraliza_texto("Atividade 1 - Vetor Simples",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval("")
   primeiro <- verdadeiro
   para i de 1 ate 10 faca
        a[i] <- randi(5)+6
        se a[i]=10 entao
           se (a[i]=10) e (primeiro) entao
              escreval("Pos.  Valor")
              primeiro <- falso
           fimse
           escreval(i:4,"  ", a[i]:2)
        fimse
   fimpara
ate volta_menu_principal() 
fimprocedimento

procedimento vetor_nulo
var submenu, i, aux: inteiro
x: vetor[1..100] de inteiro
inicio
repita
   limpatela
   gera_linha(TAM_SUBJAN)
   centraliza_texto("Atividade 2 - Vetor Nulo",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval("")
   escreval("Vetor inicial.")
   escreval("Pos.   Valor")
   para i de 1 ate 100 faca
      x[i] <- randi(30)
      escreval(i:4,"   ",x[i]:4)
   fimpara
   escreval("")
   escreval("Digite F9 para ver o vetor rearranjado valores 0 para 1")
   pausa
   escreval("Apenas as posições com valores alterados de 0 para 1 serão mostrados")
   escreval("Vetor rearranjado.")
   escreval("Pos.   Valor")
   para i de 1 ate 100 faca
      se x[i] = 0 entao
        x[i] <- 1
        escreval(i:4,"   ",x[i]:4)
      fimse
   fimpara
   escreval("")
ate volta_menu_principal()
fimprocedimento

procedimento vetor_inverso
var submenu, i: inteiro
num: vetor[1..100]  de inteiro
inicio
repita
   limpatela
   gera_linha(TAM_SUBJAN)
   centraliza_texto("Atividade 3 - Vetor Inverso",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval("")
   escreval("Vetor inicial.")
   escreval("Pos.   Valor")
   para i de 1 ate 100 faca
      num[i] <- randi(20)
      escreval(i:4,"   ",num[i]:4)
   fimpara
   escreval("")
   escreval("Digite F9 para ver o vetor rearranjado em ordem inversa.")
   pausa
   escreval("Vetor rearranjado.")
   escreval("Pos.   Valor")
   para i de 100 ate 1 passo -1 faca
      escreval(i:4,"   ",num[i]:4)
   fimpara
   escreval("")
   escreval("")
ate volta_menu_principal()
fimprocedimento

procedimento   menor_valor
var submenu,i, menor_v,menor_posicao: inteiro
num: vetor[1..80] de inteiro
inicio
repita
   limpatela
   gera_linha(TAM_SUBJAN)
   centraliza_texto("Atividade 4 - Menor Valor de N",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval("")
   menor_v <- 100
   escreval("Vetor inicial.")
   escreval("Pos.   Valor")
   para i de 1 ate 80 faca
      num[i] <- randi(100)
      escreval(i:4,"   ",num[i]:4)
      se menor_v > num[i] entao
         menor_v <- num[i]
         menor_posicao <- i
      fimse
   fimpara
   escreval("")
   escreval("O menor elemento de N é = ",menor_v," e sua posição é ",menor_posicao, "ª.")
   escreval("")
ate volta_menu_principal()
fimprocedimento

procedimento   vetor_piramide
var submenu,i, aux: inteiro
num: vetor[1..20] de inteiro
inicio
repita
   limpatela
   gera_linha(TAM_SUBJAN)
   centraliza_texto("Atividade 5 - Reordenação Piramidal",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval("")
   escreval("Vetor inicial.")
   escreval("Pos.   Valor")
   para i de 1 ate 20 faca
      num[i] <- randi(100)
      escreval(i:4,"   ",num[i]:4)
   fimpara
   para i de 1 ate 10 faca
      aux <- num[i]
      num[i] <- num[21-i]
      num[21-i] <- aux
   fimpara
   escreval("")
   escreval("Digite F9 para ver o vetor rearranjado.")
   pausa
   escreval("Vetor rearranjado.")
   escreval("Pos.   Valor")
   para i de 1 ate 20 faca
      escreval(i:4,"   ",num[i]:4)
   fimpara
   escreval("")
ate volta_menu_principal()
fimprocedimento

procedimento primeiros_primos
var submenu,i,j, aux, divisor: inteiro
num: vetor[1..10] de inteiro
inicio
repita
   limpatela
   gera_linha(TAM_SUBJAN)
   centraliza_texto("Atividade 6",TAM_SUBJAN)
   centraliza_texto("10 primeiros números primos acima de 100",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval("")
   aux <- 1
     escreva("Processando: ")
     para i de 101 ate 2000 faca
     divisor <- 0
       para j de 1 ate (i\2)+1 faca
          se i%j=0 entao
             divisor <- divisor + 1
          fimse
          se divisor > 1 entao
             interrompa
          fimse
       fimpara
       se divisor = 1 entao
           num[aux] <- i
           escreva("...")
           aux <- aux + 1
       fimse
       se aux > 10 entao
         escreva(" 100%")
         interrompa
       fimse
     fimpara
   escreval("")
   escreval("Vetor inicial.")
   escreval("Pos.   Valor")
   para aux de 1 ate 10 faca
      escreval(aux:2,"   ",num[aux]:4)
   fimpara
   escreval("")
ate volta_menu_principal()
fimprocedimento

procedimento loteria
var submenu,i, acerto,opcao, num_cartao: inteiro
gabarito, resultado: vetor[1..13] de inteiro
inicio
repita
   limpatela
   gera_linha(TAM_SUBJAN)
   centraliza_texto("Atividade 7 - Loteria",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval("")
   para i de 1 ate 13 faca
        gabarito[i] <- randi(3)+1
   fimpara
   repita
      acerto <- 0
      //Lendo o número do cartão do apostador
      num_cartao <- randi(1000)+1 //para o modo automático
      escreva("Informe o número do cartão de apostas: ")
      leia(num_cartao)
      // Lendo as apostas do cartão
      para i de 1 ate 13 faca
      repita
         escreva("Jogo [",i,"]: ")
         leia(resultado[i])
         se (resultado[i]<=0) OU (resultado[i]>3) entao
            escreval("1, 2 e 3 são os únicos valores válidos.")
         fimse
      ate (resultado[i]>0) E (resultado[i]<=3)
      fimpara
      para i de 1 ate 13 faca
         se gabarito[i] = resultado[i] entao
          acerto <- acerto + 1
         fimse
      fimpara
      gera_linha(TAM_SUBJAN)
      centraliza_texto("RESULTADO",TAM_SUBJAN)
      escreval(" #  G  R")
      para i de 1 ate 13 faca
         escreval(i:2," ",gabarito[i]," ",resultado[i])
      fimpara
      escreval("Número de acertos: ", acerto)
      se acerto = 13 entao
         escreval("GANHADOR, PARABÉNS!")
      senao
         escreval("Da próxima vez você  pode ser o ganhador!")
      fimse
      gera_linha(TAM_SUBJAN)
      escreval("")
      escreval("Deseja conferir outro bilhete?" )
      escreval("[1]- Sim")
      escreval("[2]- Não")
      escreva("Sua escolha foi: ")
      leia(opcao)
   ate opcao = 2
   escreval("")
   escreval("")
ate volta_menu_principal()
fimprocedimento

procedimento reordenando
var submenu,i,j,aux: inteiro
a, b: vetor[1..15] de inteiro
inicio
repita
   limpatela
   gera_linha(TAM_SUBJAN)
   centraliza_texto("Atividade 8 - Reodernações",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval("")
   para i de 1 ate 15 faca
        a[i]<- randi(100)
        b[i]<- a[i]
   fimpara
   para j de 1 ate 14 faca
      para i de j ate 15 faca
         aux <- a[j]
         se a[j] > a[i] entao
            a[j] <- a[i]
            a[i] <- aux
        fimse
      fimpara
   fimpara
   centraliza_texto("RESULTADO",TAM_SUBJAN)
       escreval(" #  Original   Crescente")
       para i de 1 ate 15 faca
           escreval(i:2," ",b[i]:10," ",a[i]:10)
       fimpara
   escreval("")
   gera_linha(TAM_SUBJAN)
   escreval("")
ate volta_menu_principal()
fimprocedimento

procedimento desafio_ordenacao
var submenu,i,j,k, aux, a_idx,v_idx: inteiro
v: vetor[1..30] de inteiro
a: vetor[1..10] de inteiro
inicio
repita
   limpatela
   gera_linha(TAM_SUBJAN)
   centraliza_texto("Desafio 1 - Criando, Ordenando e Inserindo",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval("")
   // Gerando V[i] e A[i]
   // Lendo 20 posições para V[]
   para i de 1 ate 30 faca
        v[i]<- randi(100)
        //Lendo 10 posições para A[]
        se i <= 10 entao
           a[i] <- randi(100)
        fimse
        se i>20 entao
         v[i] <- 10000
        fimse
   fimpara
   // imprimindo os vetores
   escreval("Imprimindo vetores antes da fusão deles")
   escreval("  #   V     A")
   para i de 1 ate 20 faca
      escreva(i:3," ",V[i]:3)
      se i <=10 entao
         escreva("   ",a[i]:3)
      fimse
      escreval("")
   fimpara
   //Ordenando V[i]
   para j de 1 ate 19 faca
      para i de j ate 20 faca
         aux <- v[j]
         se v[j] > v[i] entao
            v[j] <- v[i]
            v[i] <- aux
        fimse
      fimpara
   fimpara
   //Ordenando A[i]
   para j de 1 ate 9 faca
      para i de j ate 10 faca
         aux <- a[j]
         se a[j] > a[i] entao
            a[j] <- a[i]
            a[i] <- aux
        fimse
      fimpara
   fimpara
   //Inserindo os valores de A[] em V[]
   para i de 1 ate 10 faca
        para j de 1 ate 30 faca
             se a[i] < v[j] entao
                para k de 29 ate j passo -1 faca
                   aux <- v[k-1]
                   v[k+1] <- v[k]
                   v[k] <- aux
                fimpara
                v[j] <- a[i]
                a_idx <- i
                interrompa
             fimse
              v_idx <- j
        fimpara
   fimpara
   se a_idx < 10 entao
      para i de v_idx ate 30 faca
          v[v_idx] <- a[a_idx]
          a_idx <- a_idx+1
      fimpara
   fimse
   gera_linha(TAM_SUBJAN)
   centraliza_texto("RESULTADO",TAM_SUBJAN)
   gera_linha(TAM_SUBJAN)
   escreval(" #  Vfinal   A")
   para i de 1 ate 30 faca
      se i<=10  entao
          escreval(i:2," ",v[i]:7," ",a[i]:3)
      senao
          escreval(i:2," ",v[i]:7)
      fimse
   fimpara
   escreval("")
ate volta_menu_principal()
fimprocedimento

var
menu, TAM_JANELA, TAM_SUBJAN: inteiro
saida: caracter
inicio
TAM_JANELA <- 80
TAM_SUBJAN <- TAM_JANELA-30
repita
   limpatela
   gera_linha(TAM_JANELA)
   centraliza_texto("LÓGICA DE PROGRAMAÇÃO E ALGORIMOS",TAM_JANELA)
   centraliza_texto("Exercícios de Variáveis Homogêneas - Vetores",TAM_JANELA)
   gera_linha(TAM_JANELA)
   escreval("")
   escreval("Digite uma opções de 0 a 9 conforme sugerido abaixo:")
   escreval("   [1]: Vetor Simples de valor 10.")
   escreval("   [2]: Vetor de valores nulos.")
   escreval("   [3]: Vetor em ordem inversa.")
   escreval("   [4]: Menor  valor de N.")
   escreval("   [5]: Vetor reordenação piramidal.")
   escreval("   [6]: Dez primeiros números primos.")
   escreval("   [7]: Loteria.")
   escreval("   [8]: Reodernação.")
   escreval("   [9]: desafio 1: reodernação e inserção.")
   escreval("")
   escreval("   [0] - para terminar este programa.")
   escreval("")
   escreva("Você escolheu: ")
   leia(menu)
   limpatela
   escolha(menu)
     caso 1
       vetor_simples
     caso 2
       vetor_nulo
     caso 3
       vetor_inverso
     caso 4
       menor_valor
     caso 5
       vetor_piramide
     caso 6
       primeiros_primos
     caso 7
       loteria
     caso 8
       reordenando
     caso 9
       desafio_ordenacao
     outrocaso
       escreval("Até logo!")
       saida <- "x"
   fimescolha
ate saida = "x"
fimalgoritmo
