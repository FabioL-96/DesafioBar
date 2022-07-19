Algoritmo "Desafio.Bar"
// Formação Desenvolvedor Moderno
// Módulo: Lógica de Programação
// Capítulo: Estrutura condicional
// Professor : Nélio Alves e Luciene Chagas
// Descrição : Este programa lê os dados de um cliente do bar, informa os itens
// consumidos e então, produz um relatório com a descrição dos itens e o valor
// a ser pago pelo cliente.
// Autor : Fábio Lúcio Barrozo
// Data atual : 24/05/2022
Var

   sexo : caractere
   quantidade : inteiro
   ingresso, couvert, comanda, ticketMen, ticketWoman : real
   bebida1, bebida2, comida1, cerveja, refri, espetinho : real

Inicio

   bebida1 <- 5.00
   bebida2 <- 3.00
   comida1 <- 7.00
   couvert <- 4.00

   escreval("MacLaren's Pub")
   escreval()
//////////////////// ENTRADA DE DADOS /////////////////////////////////////////
//////// Digitar com INICIAL MAIÚSCULA ////////////////////////////////

   escreva("Sexo: ")
   leia(sexo)
   escreva("Quantidade de cervejas: ")
   leia(cerveja)
   escreva("Quantidade de refrigerantes: ")
   leia(refri)
   escreva("Quantidade de espetinhos: ")
   leia(espetinho)
   escreval

//////////////////// CONSUMO //////////////////////////////////////////////////
   comanda <- cerveja * bebida1 + refri * bebida2 + espetinho * comida1

   escreval("RELATÓRIO:")
   escreval("Consumo = R$ ",comanda:5:2)

////////////// VALOR DO COUVERT ///////////////////////////////////////////////

   se comanda > 30.00 entao
      couvert <- 0.00
     escreval("Isento de Couvert")
   senao
     escreval("Couvert = R$ ",couvert:4:2)
   fimse

 ///////////  VALOR DO INGRESSO ///////////////////////////////////////////////
 ticketMen <- 10.00
 ticketWoman <- 8.00
        
   escolha sexo
   caso "F"
      ingresso <- ticketWoman
   caso "M"
      ingresso <- ticketMen
   fimescolha

////////////// VALOR A PAGAR //////////////////////////////////////////////////
   escreval("Ingresso = R$ ",ingresso:4:2)
   escreval
   escreval("Valor a pagar: R$ ",comanda + ingresso + couvert:5:2)
   escreval
   escreva("Obrigado! Volte Sempre!!!")
   escreval

Fimalgoritmo

