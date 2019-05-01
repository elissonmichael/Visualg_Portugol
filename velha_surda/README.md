## Velha Surda
### Objetivo:

Escreva um programa chamado Velha Surda. O que quer que você diga à velha (o que quer que você digite), ela tem que responder com *QUE?! FALA MAIS ALTO!*, a não ser que você grite (digite tudo em maiúsculas). Se você gritar, ela pode lhe ouvir (ou ao menos pensa que pode), e sempre responde *NÃO, NÃO DESDE 1938!* Você não pode parar de falar com a velha enquanto não gritar *TCHAU*.

### Resolução:

Vamos dividir esse problema em duas partes:

- Alternar entre as 2 frases da velha (Resolver a Condição)
- Enquanto não gritar *TCHAU* (Resolver a Repetição)

O programa pede para o usuário fala com a velha. Vamos criar uma variável chamada **fala**, do tipo **caractere**.

```
Algoritmo "velhasurda"
Var
   fala       : caractere
Inicio
   escreva("Fale com a Velha: ")
   leia(fala)
Fimalgoritmo
```
Nosso programa não faz nada além de ler um valor do teclado. Vamos criar uma condição, que verifique se o usuário digitou todas as letras em maiúsculo, e alterne entre as duas frases da velha baseado nisso.
```
Algoritmo "velhasurda"
Var
   fala       : caractere
Inicio
   escreva("Fale com a Velha: ")
   leia(fala)
   se maiusc(fala) = fala entao
      escreval("Não, não desde 1933")
   senao
      escreval("QUE, FALA MAIS ALTO!")
   fimse
Fimalgoritmo
```
A função `maiusc(variavel)` retorna a variável, do tipo texto, que for passada como parâmetro, em maiúsculo.

Agora que já resolvemos a condição, vamos nos focar em fazer o programa se repetir enquanto o usuário não digitar a palavra *TCHAU*, ou seja, enquanto fala for diferente de "TCHAU", todo o bloco anterior deve se repetir:
```
Algoritmo "velhasurda"
Var
   fala       : caractere
Inicio
   enquanto fala <> "TCHAU" faca
      escreva("Fale com a Velha: ")
      leia(fala)
      se maiusc(fala) = fala entao
         escreval("Não, não desde 1933")
      senao
         escreval("QUE, FALA MAIS ALTO!")
      fimse
   fimenquanto
Fimalgoritmo
```
Com isso já resolvemos a primeira parte do programa.

## Velha Surda Versão 2
### Objetivo:

Melhore o seu programa Velha Surda: e se a velha não quiser que você vá embora? Quando você gritar *TCHAU*, ela pode fingir que não lhe ouve. Mude seu programa anterior para que você tenha que gritar *TCHAU* três vezes em sequência. Teste bem o seu programa: se você gritar *TCHAU* três vezes, mas não em sequência, você tem que continuar falando com a velha.

### Resolução:

- Para resolver isso vamos criar um contador de *TCHAU*s

Vamos criar uma variável chamada **tentativas**, do tipo **inteiro**. Além disso, vamos mudar nossa condição de saída para `tentativas < 3`, no bloco `enquanto`:
```
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
   fimenquanto
Fimalgoritmo
```
Do jeito como nosso programa está, a condição de saída nunca será satisfeita. Precisamos incrementar nosso contador, mas apenas quando o usuário fala "TCHAU", para isso usaremos uma condição que verificará se o usuário escreveu "TCHAU":
```
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
      fimse
   fimenquanto
Fimalgoritmo
```
Para finalizar, nosso programa pede que o usuário digite "TCHAU" **3** vezes em sequência, ou seja, se o usuário digitar qualquer coisa diferente, o contador precisa voltar a ser 0. Farei isso adicionar um `senao` em nossa condição final:
```
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
```
