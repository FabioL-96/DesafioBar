// Par�metros
// senha: utilizada para identificar o usu�rio
// Efeito: retorna qual usu�rio est� utilizando o programa.
funcao usuario(senha: inteiro) : caractere
inicio

   enquanto (senha <> 10) e (senha <> 12) faca
      escreva("Senha Inv�lida! Digite a senha novamente: ")
      leia(senha)
   fimenquanto

   se senha = 10 entao
      retorne "Atendente: Clint Barton"
   senao
      retorne "Atendente: Carol Danvers"
   fimse
fimfuncao

// Par�metros
// genero: recebe qual o tipo de sexo do cliente
// Efeito: retorna o valor do ingresso de acordo com o g�nero do cliente
funcao ingresso(genero: caractere) : real
inicio
   escolha genero
   caso "M"
      retorne 10.00
   caso "F"
      retorne 8.00
   fimescolha
fimfuncao

// Par�metros:
// cerveja: quantidade de cerveja consumida
// refrigerante: quantidade de refrigerante consumido
// espeto: quantidade de espeto consumido
// Efeito: retorna o valor total dos itens consumidos
funcao comanda(cerveja: real; refrigerante: real; espeto:real) : real
var
   pedido : real
inicio
   pedido <- cerveja * 5.0 + refrigerante * 3.0 + espeto * 7.0
   retorne pedido
fimfuncao

// Par�metros
// g�nero: informa o g�nero do cliente;
// cerveja: informa a quantidade consumida;
// refrigerante: informa a quantidade consumida;
// espeto: informa a quantidade consumida
// Efeito: informa o valor total a ser pago pelo cliente
procedimento mostrarRelatorio(genero: caractere; cerveja: real; refrigerante: real; espeto:real)
var
    valorTotal, couvert : real
inicio
   se comanda(cerveja, refrigerante, espeto) > 30.00 entao
      couvert <- 0.00
   senao
      couvert <- 4.00
   fimse
   
   valorTotal <- comanda(cerveja, refrigerante, espeto) + couvert + ingresso(genero)
   escreval("RELAT�RIO:")
   escreval("Consumo = R$ ",comanda(cerveja, refrigerante, espeto):5:2)
   escreval("Couvert = R$ ", couvert:4:2)
   escreval("Ingresso = R$ ",ingresso(genero):4:2)
   escreval("Valor a pagar: R$ ",valorTotal:5:2)
fimprocedimento

// Cap�tulo: Estrutura condicional
// Professor : N�lio Alves e Luciene Chagas
// Descri��o : Este programa l� os dados de um cliente do bar, informa os itens
// consumidos e ent�o, produz um relat�rio com a descri��o dos itens e o valor
// a ser pago pelo cliente.
// Autor : F�bio L�cio Barrozo
// Data atual : 24/05/2022
Algoritmo "Desafio.Bar"
Var

   genero : caractere
   senha : inteiro
   qtdeCerveja, qtdeRefri, qtdeEspeto : real

Inicio
   escreval("MacLaren's Pub")
   escreval()

   escreva("Digite a senha de usu�rio: ")
   leia(senha)
   escreva(usuario(senha))
   escreval

   escreva("Sexo: ")
   leia(genero)

   enquanto (genero <> "F") e (genero <> "M") faca
      escreval("Valor invalido! Favor digitar F ou M: ")
      escreva("Sexo: ")
      leia(genero)
   fimenquanto
   escreval

   escreva("Quantidade de cervejas: ")
   leia(qtdeCerveja)
   escreva("Quantidade de refrigerantes: ")
   leia(qtdeRefri)
   escreva("Quantidade de espetinhos: ")
   leia(qtdeEspeto)
   escreval
   
   mostrarRelatorio(genero, qtdeCerveja, qtdeRefri, qtdeEspeto)

   escreval
   escreva("Obrigado! Volte Sempre!!!")
   escreval

Fimalgoritmo