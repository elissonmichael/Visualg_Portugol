Algoritmo "velhasurda2"
Var
   fala       : caractere
   tentativas : inteiro
Inicio
   enquanto tentativas < 3 faca
      escreva("Fale com a Velha: ")
      leia(fala)
      se maiusc(fala) = fala entao
         escreval("Não, não desde 1933")
      senao
         escreval("QUE, FALA MAIS ALTO!")
      fimse
      se fala = "TCHAU" entao
         tentativas <- tentativas + 1
      senao
         tentativas <- 0
      fimse
   fimenquanto
Fimalgoritmo