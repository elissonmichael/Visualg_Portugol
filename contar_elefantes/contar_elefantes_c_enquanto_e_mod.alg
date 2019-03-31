Algoritmo "Contar Elefantes Usando Enquanto e Mod"
Var
   total     : inteiro
   elefantes : inteiro
   par       : logico

Inicio
   escreva("Quantos Elefantes Deseja Contar? ")
   leia(total)
   escreval(" 1 elefante incomoda muita gente.")
   elefantes <- 2
   enquanto elefantes <= total faca
      se elefantes % 2 = 0 entao
         escreval(elefantes," elefantes incomodam muito mais.")
      senao
         escreval(elefantes," elefantes incomodam muita gente.")
      fimse
      elefantes <- elefantes + 1
   fimenquanto
Fimalgoritmo