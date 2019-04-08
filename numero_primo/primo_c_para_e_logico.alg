Algoritmo "Calcular Número Primo c/ Para e Lógico"
Var
   contador : inteiro
   primo    : logico
   numero   : inteiro
Inicio
   primo <- VERDADEIRO
   escreva("Digite um número: ")
   leia(numero)
   para contador de 2 ate numero - 1 faca
      se ((numero % contador) = 0) entao
         primo <- FALSO
      fimse
   fimpara
   se primo entao
      escreva("Número ", numero, " é PRIMO")
   senao
      escreva("Número ", numero, " NÃO é PRIMO")
   fimse
Fimalgoritmo