Algoritmo "Calcular N�mero Primo c/ Para e L�gico"
Var
   contador : inteiro
   primo    : logico
   numero   : inteiro
Inicio
   primo <- VERDADEIRO
   escreva("Digite um n�mero: ")
   leia(numero)
   para contador de 2 ate numero - 1 faca
      se ((numero % contador) = 0) entao
         primo <- FALSO
      fimse
   fimpara
   se primo entao
      escreva("N�mero ", numero, " � PRIMO")
   senao
      escreva("N�mero ", numero, " N�O � PRIMO")
   fimse
Fimalgoritmo