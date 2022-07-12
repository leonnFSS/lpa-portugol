funcao resultado <- geraDigito(num, base, expoente)
   var resultado: inteiro
   resultado <- num div (base ^ expoente)
fimfuncao

funcao res <- contaDigito(num)
   var res: inteiro
   res <- 0
   se num >= 9 entao
      enquanto num > 0 faca
         num <- num div 10
         res <- res + 1
      fimenquanto
   fimse
fimfuncao

funcao res <- paraDecimal(num, base)
   var res, expoente, i, dig: inteiro
   i <- contaDigito(num) 
   res <- 0   
   enquanto i > 0 faca
        expoente <- i - 1
       dig <- geraDigito(num, 10, expoente)    
       res <- res + (dig * base ^ expoente)
      
       //escreval(dig, " * ", base, " ^ ", expoente, " = ", dig*base^expoente)
      //escreval("somatorio = ", res)

       num <- num - (dig * 10 ^ expoente)
      i <- i - 1
   fimenquanto
fimfuncao

algoritmo "conversor de numeros"
 var a, b, c, i: inteiro
 inicio
i <- 3
enquanto i > 0 faca

a <- randi(10000)
b <- randi(9) +2
c <- contaDigito(a)-1

//escreval("Primeiro digito de ", a ," = ", geraDigito(a,10,c))
escreval("numero:  ", a," base: ", b)
escreval( "numero de base 10 :   ", paraDecimal(a, b))
 i <- i - 1
fimenquanto
fimalgoritmo
