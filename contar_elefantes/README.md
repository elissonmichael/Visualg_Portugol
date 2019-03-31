## Contar Elefantes
### Objetivo:

Crie um programa que escreva a letra para o clássico das viagens de carro:

- 1 elefante incomoda muita gente...
- 2 elefantes incomodam incomodam muito mais...
- 3 elefantes incomodam muita gente...
- 4 elefantes incomodam incomodam incomodam incomodam muito mais...
- 5 elefantes incomodam muita gente...

Permita que o usuário escolha quantos elefantes devem ser contados na música.

### Resolução:

Eu gosto de dividir esse problema em três partes:

- Contar Elefantes (Resolver a Repetição)
- Alterar entre as 2 frases (Resolver a Condição)
- Concatenar "incomodam " em uma das condições

O programa pede para o usuário inserir um número.

```
Var
   total : inteiro

Inicio
   escreva("Quantos Elefantes Deseja Contar? ")
   leia(total)
Fimalgoritmo
```

Esse valor  será usado na condição de um laço de repetição. Precisamos de um contador, em Portugol podemos usar o `enquanto`, o `para` ou o `repita`. O exemplo abaixo mostrar o bloco `enquanto` sendo usado com um contador.

```
Var
   contador : inteiro

Inicio
   contador <- 1
   enquanto contador <= 10 faca
      escreval(contador)
      contador <- contador + 1
   fimenquanto
Fimalgoritmo
```

O código a seguir mostrar o mesmo código usando o bloco `para`:

```
Var
   contador : inteiro

Inicio
   para contador de 1 ate 10 faca
      escreval(contador)
   fimpara
Fimalgoritmo
```
Podemos resolver o problema usando qualquer bloco de repetição, nessa pasta você verá um exemplo de solução usando tipos de blocos de repetição diferentes. Vou prosseguir, nesse passo a passo, usando o bloco `enquanto`, vou renomear a variável `contador` para algo mais descritivo e específico para o problema que estamos tentando resolver:
```
Var
   elefantes : inteiro

Inicio
   elefantes <- 1
   enquanto elefantes <= 10 faca
      escreval(elefantes)
      elefantes <- elefantes + 1
   fimenquanto
Fimalgoritmo
```

No passo seguinte, vou alterar o valor inicial da repetição para 2 e escrever a primeira frase fora da repetição, como ela não se repete, não precisa estar dentro do bloco de repetição:

```
Var
   elefantes : inteiro

Inicio
   escreval(" 1 elefante incomoda muita gente")
   elefantes <- 2
   enquanto elefantes <= 10 faca
      escreval(elefantes, " elefantes incomodam muita gente")
      elefantes <- elefantes + 1
   fimenquanto
Fimalgoritmo
```
Vou mesclar o contador de elefantes com a pergunta inicial ao usuário e já resolvemos a primeira parte do programa. Observe a variável `total` sendo usada na condição do bloco de repetição:

```
Var
   elefantes : inteiro
   total     : inteiro

Inicio
   escreva("Quantos Elefantes Deseja Contar? ")
   leia(total)
   escreval(" 1 elefante incomoda muita gente")
   elefantes <- 2
   enquanto elefantes <= total faca
      escreval(elefantes, " elefantes incomodam muita gente")
      elefantes <- elefantes + 1
   fimenquanto
Fimalgoritmo
```

Para resolver o segundo problema, precisamos de um bloco de condição (`if`). Podemos usar como condição a verificação do número de elefantes (par ou ímpar). Sabemos que queremos alternar entre essas duas frases:
```
se elefantes % 2 = 0 entao
   escreval(elefantes, " elefantes incomodam muito mais")
senao
   escreval(elefantes, " elefantes incomodam muita gente")
fimse
```
Agora precisamos usar esse bloco de condição dentro do bloco de repetição que já escrevemos anterioremente:

```
Var
   elefantes : inteiro
   total     : inteiro

Inicio
   escreva("Quantos Elefantes Deseja Contar? ")
   leia(total)
   escreval(" 1 elefante incomoda muita gente")
   elefantes <- 2
   enquanto elefantes <= total faca
      se elefantes % 2 = 0 entao
         escreval(elefantes, " elefante incomoda muito mais")
      senao
         escreval(elefantes, " elefante incomoda muita gente")
      fimse
      elefantes <- elefantes + 1
   fimenquanto
Fimalgoritmo
```
Resolvido a segunda parte do problema. Agora só nos resta concatenar o número de "incomodam", que deve aparecer apenas quando o número é par no bloco de condição. Para isso vou criar uma variável do tipo `caractere`, que armazenará o resultado da concatenação das *strings*:

```
Var
   elefantes : inteiro
   total     : inteiro
   incomodam : caractere

Inicio
   escreva("Quantos Elefantes Deseja Contar? ")
   leia(total)
   elefantes <- 2
   incomodam <- "incomodam "
   enquanto elefantes <= total faca
      incomodam <- incomodam + "incomodam "
      escreval(incomodam)
      elefantes <- elefantes + 1
   fimenquanto
Fimalgoritmo
```
Veja como essa solução se mescla ao código que já construímos até aqui.
```
Var
   elefantes : inteiro
   total     : inteiro
   incomodam : caractere

Inicio
   escreva("Quantos Elefantes Deseja Contar? ")
   leia(total)
   escreval(" 1 elefante incomoda muita gente")
   elefantes <- 2
   incomodam <- "incomodam "
   enquanto elefantes <= total faca
      incomodam <- incomodam + "incomodam "
      se elefantes % 2 = 0 entao
         escreval(elefantes, " elefantes ", incomodam, "muito mais")
      senao
         escreval(elefantes, " elefantes incomodam muita gente")
      fimse
      elefantes <- elefantes + 1
   fimenquanto
Fimalgoritmo
```
