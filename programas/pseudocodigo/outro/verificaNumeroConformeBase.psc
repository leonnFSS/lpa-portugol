funcao res <- contaDigito(num)
   var res: inteiro
   
   res <- 0
   num <- abs(num)

   se num >= 9 entao
      enquanto num > 0 faca
         num <- num div 10
         res <- res + 1
      fimenquanto
   senao
         res <- 1
   fimse
fimfuncao

// funcao que avalia APENAS números inteiros. 
funcao res <- eNumBase(num, base)
var res: logico
var dig, expoente: inteiro

res <- falso
num <- abs(num)
expoente <- contaDigito(num)-1

se num >= base entao
      res <- verdadeiro
      enquanto (num > = 0) e (res = verdadeiro) faca
         dig <- num div  10 ^ expoente 
       se expoente >= 0 entao
         se dig >= base entao
            res <- falso
         senao
           res <- verdadeiro
        fimse
      fimse
          num <- num - dig * 10 ^ expoente
          expoente <- expoente - 1
      fimenquanto
fimse
fimfuncao


algoritmo "percorre numero"
  var n, b : inteiro
 inicio
n <- randi(999)
b <- randi(14)+2

escreval("número:    ", n, "   base: ", b, " válido:    ", eNumBase(n,b))

  fimalgoritmo
