## Número Primo
### Objetivo:

Crie um programa que receba um número do usuário e responda se esse número é um número primo ou não.
Um [número primo](https://pt.wikipedia.org/wiki/N%C3%BAmero_primo) tem apenas dois divisores: o número um (1) e ele mesmo.

### Resolução:

Precisamos percorrer os valores entre 2 e o número anterior ao digitado pelo usuário.
Vamos dividir esse problema em três etapas.

- Entrada (Receber o número do usuário)
- Repetição (Ser capaz de percorrer entre os números)
- Condição (Saber se o resto da divisão é igual a zero)

O programa pede para o usuário inserir um número. Vamos chamar essa variável
de numero, do tipo inteiro.

```
Var
   numero   : inteiro
Inicio
   escreva("Digite um número: ")
   leia(numero)
Fimalgoritmo
```
Vamos criar um laço de repetição para percorrer os números entre 2 e número - 1. 
Não precisamos dividir o número por um (1), nem por ele mesmo.

```
Var
   contador : inteiro
   numero   : inteiro
Inicio
   escreva("Digite um número: ")
   leia(numero)
   para contador de 2 ate numero - 1 faca
     escreval(contador)
   fimpara
Fimalgoritmo
```
Podemos resolver o problema contando quantos divisores o número contém.
```
Var
   contador : inteiro
   divisores: inteiro
   numero   : inteiro
Inicio
   escreva("Digite um número: ")
   leia(numero)
   para contador de 2 ate numero - 1 faca
      se ((numero % contador) = 0) entao
         divisores <- divisores + 1
      fimse
   fimpara
```
Um número primo tem 0 divisores entre 2 e seu antecessor.
```
Var
   contador : inteiro
   divisores: inteiro
   numero   : inteiro
Inicio
   escreva("Digite um número: ")
   leia(numero)
   para contador de 2 ate numero - 1 faca
      se ((numero % contador) = 0) entao
         divisores <- divisores + 1
      fimse
   fimpara
   se divisores = 0 entao
      escreva("Número ", numero, " é PRIMO")
   senao
      escreva("Número ", numero, " NÃO é PRIMO")
   fimse
```
