algoritmo "N�meros Perfeitos"
// Fun��o :
// Autor :
// Data : 30/05/2022
// Se��o de Declara��es 
procedimento v_1
var soma,num, perfeito, i, j: inteiro
inicio
escreva("Informe quantos n�meros perfeitos devem ser calculados: ")
leia(num)
perfeito <- 0
j <- 2
se num > 4 entao
  escreval("Vers�o muito lenta. N�mero deveria ser menor ou igual 4.")
  num <- 4
fimse
repita
  soma <- 0
  para i de 1 ate (j div 2) faca // div equivale a  \
	 se j%i=0 entao
		soma<-soma+i
	 fimse
  fimpara
  se soma = j  entao
	 perfeito<- perfeito +1
	 se  perfeito = 1  entao
		escreval("#    N�mero Perfeito")
		escreval(perfeito:2, "  ", j:6)
	 senao
		escreval(perfeito:2, "  ", j:6)
	 fimse
  fimse
 j <- j+1 
ate num = perfeito
escreval("")
fimprocedimento

procedimento v_2
var soma,num, perfeito, i, j: inteiro
ultimo_j, ultima_soma : inteiro
inicio
escreva("Informe quantos n�meros perfeitos devem ser calculados: ")
leia(num)
perfeito <- 0
j <- 2
ultimo_j <- 1
repita
  se ultima_soma = 0 entao
	 soma <- 0
  senao
	 soma <- ultima_soma
  fimse
  para i de ultimo_j ate j div 2 faca // div equivale a  \
	 se j%i=0 entao
		soma<-soma+i
	 fimse
  fimpara
	  escreval("soma: ", soma, ", j: ", j, ", ultimo j: ", ultimo_j)
  se soma = j  entao
	 ultimo_j <- j
	 ultima_soma <- soma
	 perfeito<- perfeito +1
	 escreval(perfeito, " - ", j)
  fimse  
  se j < ultimo_j entao
	 j <- ultimo_j
  senao
	 j <- j+1
  fimse
ate perfeito = 4
escreval("")
fimprocedimento

procedimento v_3
var i, num, perfeito: inteiro
inicio
perfeito <- 0
i <- 2
enquanto perfeito < 4 faca
  num <- int(2^i -1)
  se num = 3 entao
	 perfeito <- perfeito + 1
	 escreval(num*2^(i-1))
  senao
	 se nao((num%2=0)ou(num%3=0)) entao
		escreval(num*2^(i-1))
		perfeito <- perfeito +1
	 fimse
  fimse
i <- i+1
fimenquanto
fimprocedimento

procedimento v_4
var num, iterador, contador, perfeito, divisor, limite: inteiro
inicio
// O exerc�cio pede os 4 primeiros n�meros
escreva("Informe quantos n�meros perfeitos deseja encontrar: ")
leia(limite)
perfeito <- 0
iterador <- 2

enquanto perfeito < limite faca
   //n�mero Mersenne: Mi = (2^i) - 1
   //Ex. M1 = (2^1)-1 = 1
	num <- int(2^iterador - 1)
	contador <- 1
	divisor <- 0
	// Descobrindo se num � n�mero primo
	// N�mero Primo � divisivel por 1 e por si mesmo
	// divisor = 2
	enquanto num >= contador faca
	   se num % contador = 0 entao
		  divisor <- divisor + 1
	   fimse
	   contador <- contador + 1
	fimenquanto
	se (divisor = 2) entao
	// Se o n�mero de Mersenne � primo, ent�o ele gera um n�mero perfeito
	// Nperfeito = numMersenne * 2^(n - 1)
	  perfeito <- perfeito + 1
	  se perfeito = 1 entao
         escreval(" #   nMersenne nPerfeito")
     fimse
	  escreval(perfeito:2,"  ",num:8,"  ",(num * 2^(iterador-1)):10)
	fimse
	iterador <- iterador + 1
	fimenquanto
fimprocedimento

var opcao: inteiro
inicio
repita
   limpatela
   escreval("N�MERO PERFEITO")
   escreval("")
   escreval("DICA: Quanto maior o n�mero da vers�o, mais r�pida ela �.")
   escreval("")
   escreval("Escolha uma das op��es abaixo: ")
   escreval("1 - versao 1 ")
   escreval("2 - versao 2 ")
   escreval("3 - versao 3 ")
   escreval("4 - versao 4 ")
   escreval("")
   escreval("0 - Encerra o programa ")
   escreval("")
   escreva("Op��o escolhida: ")
   leia(opcao)
   escolha opcao
      caso 1
         cronometro on
           v_1
         cronometro off
         escreval("F9 = MENU PRINCIPAL")
         escreval("CRTL+F2 = ENCERRAR PROGRAMA")
         pausa
      caso 2
         cronometro on
           v_2
         cronometro off
         escreval("Digite F9")
         pausa
      caso 3
        cronometro on
           v_3
         cronometro off
         escreval("Digite F9")
         pausa
       caso 4
        cronometro on
           v_4
         cronometro off
         escreval("Digite F9")
         pausa
       outrocaso
         escreva("Op��o inv�lida.")
   fimescolha
ate opcao = 0
fimalgoritmo