algoritmo "Exerc�cios de Entrada e Sa�da"
// Fun��o :
// Autor : Leonardo F.S.S
// Data : 19/03/2022
// Se��o de Declara��es
var
        // menu
        menu: inteiro

        // exercicio 1
var        a, b, c : real

        // exerc. 2
var        raio, altura: real

        // exercicio 3
 var       nome: caractere // esta vari�vel ser� usada nos exerc. 3, 4 e 5
 var       numFilhos: inteiro
        // salarioBruto e salarioFinal ser�o usadas no exerc. 4
  var      horasTrabalhadas, valorHoras, salarioHora, salarioBruto, salarioFinal: real

        // exerc. 4
  var      vendas, comissao: real

        // exerc. 5
 var       distancia, tempo, velocMedia: real

        // desafio 1
var        numChopps, numClientes, numPizzas, numCoberturas: inteiro
 var       contaPorCliente, conta, gorjeta: numerico

        // desafio 2
var        consumo, pagamento, troco, temporario, nota50, nota20, nota10, nota5, nota2, moeda1: inteiro

inicio
    menu <- 1
    Enquanto menu <> 0 faca
        limpatela
        escreval("****************************************************************")
        escreval("*                                                              *")
        escreval("*             Logica de Programa��o e Algoritmos               *")
        escreval("*                                                              *")
        escreval("*              Exerc�cios de Entrada e Sa�da                   *")
        escreval("*                                                              *")
        escreval("****************************************************************")
        escreval("")
        escreval("")

        escreval("Digite uma op��es de 0 a 7 conforme sugerido abaixo:")
        escreval("      1 - para atividade 1: �reas de pol�gonos.")
        escreval("      2 - para atividade 2: Volume de Cilindro.")
        escreval("      3 - para atividade 3: Sal�rio.")
        escreval("      4 - para atividade 4: Vendas.")
        escreval("      5 - para atividade 5: Velocidade.")
        escreval("      6 - para desafio 1: Pizzaria.")
        escreval("      7 - para desafio 2. Troco")
        escreval("")
        escreval("      0 - para terminar este programa.")
        escreval("")
        escreval("")
        escreva("Voc� escolheu: ")
        leia(menu)
        limpatela

    escolha(menu)
           caso 1
             escreval("*********************************************")
             escreval("     Exerc�cio 1 - �rea de Pol�gonos")
             escreval("*********************************************")
             escreval("")

             // Captando os dados
             escreva("Digite um n�mero para a: ")
             leia(a)
             escreva("Digite um n�mero para b: ")
             leia(b)
             escreva("Digite um n�mero para c: ")
             leia(c)

             // Processando e entregando resultados
             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("�rea do trap�zio: ", ((a+b)/2)*c)
             escreval("�rea do quadrado: ", b^2)
             escreval("�rea do cubo: ", 6*c^2)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 2
             escreval("*********************************************")
             escreval("     Exerc�cio 2 - Volume do Cil�ndro")
             escreval("*********************************************")
             escreval("")

             // PI � uma constante j� implementada em Portugol  =~ 3.14152
             escreva("Digite o valor do raio: ")
             leia(raio)
             escreva("Digite o valor da altura da caixa: ")
             leia(altura)

             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("O volume da caixa cil�ndrica � ", PI * raio^2 * altura)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 3
             escreval("*********************************************")
             escreval("     Exerc�cio 3 - Sal�rio")
             escreval("*********************************************")
             escreval("")

             escreva("Informe o nome do funcion�rio: ")
             leia(nome)
             escreva("Informe quantos filhos o funcion�rio tem: ")
             leia(numFilhos)
             escreva("Informe quantas horas o funcion�rio trabalhou: ")
             leia(horasTrabalhadas)
             escreva("Informe o valor do sal�rio hora: ")
             leia(salarioHora)

             // C�lculos
             salarioBruto <- horasTrabalhadas * salarioHora
             salarioFinal <- salarioBruto * numFilhos * 0.03 + salarioBruto

             // Apresentando resultados
             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("Sal�rio final: ", salarioFinal)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 4
             escreval("*********************************************")
             escreval("     Exerc�cio 4 - Vendas")
             escreval("*********************************************")
             escreval("")

             escreval("Informe: ")
             escreva("- nome do vendedor: ")
             leia(nome)
             escreva("- quantidade, em dinheiro, das vendas realizadas: ")
             leia(vendas)
             escreva("- sal�rio fixo do vendedor: ")
             leia(salarioBruto)
             escreva("- percentual da comiss�o de venda [Forma decimal. Ex. 5% = 0.05]: ")
             leia(comissao)

             // C�lculos
             salarioFinal <- vendas * comissao + salarioBruto

             // Apresentando resultados
             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("Sal�rio final do vendedor ",nome,": ", salarioFinal:)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 5
             escreval("*********************************************")
             escreval("     Exerc�cio 5 - Dist�ncia e velocidade")
             escreval("*********************************************")
             escreval("")

             escreva("Informe o nome do piloto: ")
             leia(nome)
             escreva("Informe qual a dist�ncia percorrida por ele (em km): ")
             leia(distancia)
             escreva("Informe quantas horas ele gastou para cubrir tal dist�ncia (em h): ")
             leia(tempo)

             velocMedia <- distancia / tempo

             escreval("")
             escreval("*** RESULTADOS ***")
             escreval("A velocidade m�dia do ",nome," foi ",velocMedia, " km/h.")

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
             escreval("qtd  descri��o   v.unit.(R$) Total(R$)")
             escreval(numCoberturas," Coberturas    1,50    ",numCoberturas * 1.50 )
             escreval(numChopps," Chopps        0,80    ",numChopps * 0.80 )
             escreval(numCoberturas," Pizzas        10,00   ",numPizzas * 10.00 )
             escreval("")
             escreval(numClientes," Clientes")
             escreval("")
             escreval("Consumo: R$ ", conta)
             escreval("Servi�os 10% da conta ", gorjeta)
             escreval("Valor Total: R$ ", conta + gorjeta)
             escreval("")
             escreval("Valor por cliente: R$ ",contaPorCliente)

             escreval("")
             escreval("")
             escreva("Digite F9 para voltar o MENU INICIAL")
             pausa

           caso 7
             escreval("*********************************************")
             escreval("     Desafio 2 - Troco")
             escreval("*********************************************")
             escreval("")

             escreval("Informe os seguintes valores ($) [apenas n�meros inteiros s�o v�lidos] :")
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
             escreval("At� logo!")
        fimescolha
    fimenquanto
fimalgoritmo
