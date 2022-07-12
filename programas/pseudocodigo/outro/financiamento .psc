algoritmo "Financiamento"
  var salario, emprestimo : real

 inicio
  emprestimo <- randi(40)+1
  salario <- randi(20)+1
 
escreva ("salario: ", salario, " financiamento: ", emprestimo)

   se ( salario  >=  emprestimo / 5 ) entao
      escreva("concedido")
   senao
      escreva("negado")
   fimse
escreva("obrigado")
  
  fimalgoritmo