Algoritmo "Contar Elefantes Usando Tipo Lógico e Para"
Var
   total     : inteiro
   elefantes : inteiro
   par       : logico
   incomodam : caractere

Inicio
   par <- verdadeiro
   incomodam <- "incomodam "
   escreva("Quantos Elefantes Deseja Contar? ")
   leia(total)
   escreval(" 1 elefante incomoda muita gente.")
   para elefantes de 2 ate total faca
      incomodam <- incomodam + "incomodam "
      se par entao
         escreval(elefantes," elefantes " + incomodam + "muito mais.")
      senao
         escreval(elefantes," elefantes incomodam muita gente.")
      fimse
      par <- nao par
   fimpara
Fimalgoritmo