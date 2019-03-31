Algoritmo "Calcular Número Primo c/ Enquanto e Inteiro"
Var
   contador : inteiro
   divisores: inteiro
   numero   : inteiro
Inicio
   escreva("Digite um número: ")
   leia(numero)
   contador <- 2
   enquanto contador < numero - 1 faca
      se ((numero % contador) = 0) entao
         divisores <- divisores + 1
      fimse
      contador <- contador + 1
   fimenquanto
   se divisores = 0 entao
      escreva("Número ", numero, " é PRIMO")
   senao
      escreva("Número ", numero, " NÃO é PRIMO")
   fimse
Fimalgoritmo