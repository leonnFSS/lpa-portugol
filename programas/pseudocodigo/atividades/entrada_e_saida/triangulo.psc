algoritmo "Triangulos"
  var a,b,c : real
 var naoTriangulo:logico
 inicio
  escreva("Digite os 3 lados de um triângulo [após cada lado digite ENTER]: ")
//   leia(a)   
//   leia(b)
//   leia(c)

a <- randi(5)+1
b <- randi(5)+1
c <- randi(5)+1
escreva(a, "    ", b,"    ",c)
naoTriangulo <- ~ ((a < b+c) & (b < a+c) & (c < a+b))

se naoTriangulo entao
    escreva("Com as medidas fornecidas não é possível formar um triângulo.")
senao
     se (a=b) & (b=c) entao
         escreva("equilátero")
      senao 
         se (a<>b) & (b<>c) & (a<>c) entao
            escreva("escaleno")
          senao
            escreva ("isóceles")
          fimse
   fimse
fimse
fimalgoritmo
