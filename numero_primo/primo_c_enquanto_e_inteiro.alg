Algoritmo "Calcular N�mero Primo c/ Enquanto e Inteiro"
Var
   contador : inteiro
   divisores: inteiro
   numero   : inteiro
Inicio
   escreva("Digite um n�mero: ")
   leia(numero)
   contador <- 2
   enquanto contador < numero - 1 faca
      se ((numero % contador) = 0) entao
         divisores <- divisores + 1
      fimse
      contador <- contador + 1
   fimenquanto
   se divisores = 0 entao
      escreva("N�mero ", numero, " � PRIMO")
   senao
      escreva("N�mero ", numero, " N�O � PRIMO")
   fimse
Fimalgoritmo