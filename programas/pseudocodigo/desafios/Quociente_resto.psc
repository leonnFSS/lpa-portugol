algoritmo "Quociente e Resto apenas com subtração e adição"
  var dividendo, divisor, quociente, resto : inteiro

 inicio
 //  escreva("Digite um número inteiro: ")
 //  leia(dividendo)
//   escreva("Digite outro número inteiro: ")
  //leia(divisor)
dividendo <- randi(10000)
divisor <- randi(1000)
resto <- dividendo
quociente <-0

enquanto resto >= divisor  faca
      resto <- resto - divisor
      quociente <- quociente + 1
fimenquanto

escreval("numero 1:  ", dividendo)
escreval("numero 2:  ", divisor)
escreval ("resto:         ", resto)
escreval ("quociente: ", quociente)

fimalgoritmo