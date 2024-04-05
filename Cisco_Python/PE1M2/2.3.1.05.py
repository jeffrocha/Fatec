"""
Operadores: remainder (modulo)
O próximo operador é bastante peculiar, visto não ter equivalente entre os operadores aritméticos tradicionais.

A sua representação gráfica em Python é o sinal % (percentagem), o que pode parecer um pouco confuso.

Tente pensar nisto como uma barra (operador de divisão) acompanhada por dois pequenos círculos engraçados.

O resultado do operador é um remainder (resto) deixado após a divisão inteira.

Por outras palavras, é o valor que sobrou depois de dividir um valor por outro para produzir um quociente inteiro.

Nota: o operador às vezes é chamado modulo noutras linguagens de programação.

Dê uma vista de olhos no snippet - tente prever o seu resultado e, em seguida, execute-o:

print(14 % 4)


Como pode ver, o resultado é dois. Esta é a razão:

14 // 4 dá 3 → este é o quociente inteiro;
3 * 4 dá 12 → como resultado da multiplicação de quocientes e divisores;
14 - 12 dá 2 → este é o resto.

Este exemplo é um pouco mais complicado:

print(12 % 4.5)


Qual é o resultado?

Verifique

Operadores: como não dividir
Como provavelmente sabe, a divisão por zero não funciona.

Não tente:

executar uma divisão por zero;
executar uma divisão inteira por zero;
encontrar um remainder de uma divisão por zero.
"""

print(14 % 4)
print()
print(12 % 4.5)
