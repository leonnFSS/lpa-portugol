algoritmo "Exercícios de Entrada e Saída"
// Função :
// Autor : Leonardo F.S.S
// Data : 10/04/2022
// Seção de Declarações
var        
	menu: inteiro

	a, b, c : real	// exercicio 1	
	raio, altura: real // exerc. 2	
	nome: literal // exercicio 3 -- esta variável será usada nos exerc. 3, 4 e 5
	numFilhos: inteiro	
	horasTrabalhadas, valorHoras, salarioHora, salarioBruto, salarioFinal: real // salarioBruto e salarioFinal serão usadas no exerc. 4
	vendas, comissao: real // exerc. 4
	distancia, tempo, velocMedia: real // exerc. 5
	// desafio 1
	numChopps, numClientes, numPizzas, numCoberturas: inteiro
	contaPorCliente, conta, gorjeta: real
	// desafio 2
	consumo, pagamento, troco, temporario, nota50, nota20, nota10, nota5, nota2, moeda1: inteiro

inicio
    menu <- 1
    Enquanto menu <> 0 faca
        limpatela
        escreval("****************************************************************")
        escreval("*                                                              *")
        escreval("*             Logica de Programação e Algoritmos               *")
        escreval("*                                                              *")
        escreval("*              Exercícios de Entrada e Saída                   *")
        escreval("*                                                              *")
        escreval("****************************************************************")
        escreval("")
        escreval("")

        escreval("Digite uma opções de 0 a 7 conforme sugerido abaixo:")
        escreval("      1 - para atividade 1: Áreas de polígonos.")
        escreval("      2 - para atividade 2: Volume de Cilindro.")
        escreval("      3 - para atividade 3: Salário.")
        escreval("      4 - para atividade 4: Vendas.")
        escreval("      5 - para atividade 5: Velocidade.")
        escreval("      6 - para desafio 1: Pizzaria.")
        escreval("      7 - para desafio 2. Troco")
        escreval("")
        escreval("      0 - para terminar este programa.")
        escreval("")
        escreval("")
        escreva("Você escolheu: ")
        leia(menu)
        limpatela

    escolha(menu)
           caso 1
             escreval("*********************************************")
             escreval("     Exercício 1 - Área de Polígonos")
             escreval("*********************************************")
             escreval("")

             // Captando os dados
             escreva("Digite um número para a: ")
             leia(a)
             escreva("Digite um número para b: ")
             leia(b)
             escreva("Digite um número para c: ")
             leia(c)

             // Processando e entregando resultados
             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("Área do trapézio: ", ((a+b)/2)*c)
             escreval("Área do quadrado: ", b^2)
             escreval("Área do cubo: ", 6*c^2)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 2
             escreval("*********************************************")
             escreval("     Exercício 2 - Volume do Cilíndro")
             escreval("*********************************************")
             escreval("")

             // PI é uma constante já implementada em Portugol  =~ 3.14152
             escreva("Digite o valor do raio: ")
             leia(raio)
             escreva("Digite o valor da altura da caixa: ")
             leia(altura)

             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("O volume da caixa cilíndrica é ", PI * raio^2 * altura)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 3
             escreval("*********************************************")
             escreval("     Exercício 3 - Salário")
             escreval("*********************************************")
             escreval("")

             escreva("Informe o nome do funcionário: ")
             leia(nome)
             escreva("Informe quantos filhos o funcionário tem: ")
             leia(numFilhos)
             escreva("Informe quantas horas o funcionário trabalhou: ")
             leia(horasTrabalhadas)
             escreva("Informe o valor do salário hora: ")
             leia(salarioHora)

             // Cálculos
             salarioBruto <- horasTrabalhadas * salarioHora
             salarioFinal <- salarioBruto * numFilhos * 0.03 + salarioBruto

             // Apresentando resultados
             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("Salário final: ", salarioFinal:1:2)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 4
             escreval("*********************************************")
             escreval("     Exercício 4 - Vendas")
             escreval("*********************************************")
             escreval("")

             escreval("Informe: ")
             escreva("- nome do vendedor: ")
             leia(nome)
             escreva("- quantidade, em dinheiro, das vendas realizadas: ")
             leia(vendas)
             escreva("- salário fixo do vendedor: ")
             leia(salarioBruto)
             escreva("- percentual da comissão de venda [Forma decimal. Ex. 5% = 0.05]: ")
             leia(comissao)

             // Cálculos
             salarioFinal <- vendas * comissao + salarioBruto

             // Apresentando resultados
             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("Salário final do vendedor ",nome,": ", salarioFinal:1:2)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 5
             escreval("*********************************************")
             escreval("     Exercício 5 - Distância e velocidade")
             escreval("*********************************************")
             escreval("")

             escreva("Informe o nome do piloto: ")
             leia(nome)
             escreva("Informe qual a distância percorrida por ele (em km): ")
             leia(distancia)
             escreva("Informe quantas horas ele gastou para cubrir tal distância (em h): ")
             leia(tempo)

             velocMedia <- distancia / tempo

             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("A velocidade média do ",nome," foi ",velocMedia:1:2, " km/h.")

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 6
             escreval("*********************************************")
             escreval("     Desafio 1 - Pizzaria")
             escreval("*********************************************")
             escreval("")

             escreva("Informe quantidade de clientes: ")
             leia(numClientes)
             escreval("Informe as quantidades consumidas de: ")
             escreva("chopps: ")
             leia(numChopps)
             escreva("pizzas: ")
             leia(numPizzas)
             escreva("coberturas: ")
             leia(numCoberturas)

             conta <- (numPizzas * 10.00) + (numCoberturas * 1.50) + (numChopps * 0.80)
             gorjeta <- conta * 0.10
             contaPorCliente <- (conta + gorjeta) / numClientes

             escreval("")
             escreval("")
             escreval("*** CONTA ***")
             escreval("qtd  descrição   v.unit.(R$) Total(R$)")
             escreval(numCoberturas," Coberturas    1,50    ",numCoberturas * 1.50 )
             escreval(numChopps," Chopps        0,80    ",numChopps * 0.80 )
             escreval(numCoberturas," Pizzas        10,00   ",numPizzas * 10.00 )
             escreval("")
             escreval(numClientes," Clientes")
             escreval("")
             escreval("Consumo: R$ ", conta:1:2)
             escreval("Serviços 10% da conta ", gorjeta:1:2)
             escreval("Valor Total: R$ ", conta + gorjeta:1:2)
             escreval("")
             escreval("Valor por cliente: R$ ",contaPorCliente:1:2)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 7
             escreval("*********************************************")
             escreval("     Desafio 2 - Troco")
             escreval("*********************************************")
             escreval("")

             escreval("Informe os seguintes valores ($) [apenas números inteiros são válidos] :")
             escreva("Conta total: ")
             leia(consumo)
             escreva("Valor Pago: ")
             leia(pagamento)

             se consumo > pagamento entao
                escreval("Pagamento insuficiente para cobrir o valor consumido!")
                escreval("Ainda falta(m): $", consumo - pagamento)
             senao
                troco <- pagamento - consumo

                nota50 <- troco \ 50
                temporario <- troco - nota50 * 50
                nota20 <- temporario \ 20
                temporario <- temporario - nota20 * 20
                nota10 <- temporario \ 10
                temporario <- temporario - nota10 * 10
                nota5 <- temporario \ 5
                temporario <- temporario - nota5 * 5
                nota2 <- temporario \ 2
                temporario <- temporario - nota2 * 2
                moeda1 <- temporario

                escreval("")
                escreval("")
                escreval("***** CONTA *****")
                escreval("")
                escreval("Valor:        ", consumo)
                escreval("Pagamento:    ",pagamento)
                escreval("Troco:        ", troco)
                escreval("")
                escreval("Quantidade de notas e moedas no troco:")
                escreval("nota(s) de $50: ",nota50)
                escreval("nota(s) de $20: ",nota20)
                escreval("nota(s) de $10: ",nota10)
                escreval("nota(s) de $ 5: ",nota5)
                escreval("nota(s) de $ 2: ",nota2)
                escreval("moeda(s) de $ 1:",moeda1)
             fimse
             
             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa
             
           outrocaso
             escreval("Até logo!")
        fimescolha
    fimenquanto
fimalgoritmo
