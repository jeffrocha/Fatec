"""Tempo estimado
10-15 minutos

Nível de dificuldade
Fácil

Objetivos
familiarizar-se com o conceito de números, operadores, e operações aritméticas em Python;
realizar cálculos básicos.
Cenário
Veja o código no editor: ele lê um valor float , coloca-o numa variável chamada x, e imprime o valor de uma variável chamada y. A sua tarefa é completar o código para avaliar a seguinte expressão:

3x3 - 2x2 + 3x - 1

O resultado deve ser atribuído a y.

Lembre-se que a notação algébrica clássica gosta de omitir o operador de multiplicação - precisa de o utilizar explicitamente. Note como alteramos o tipo de dados para garantir que x é do tipo float.

Mantenha o seu código limpo e legível, e teste-o usando os dados que fornecemos, atribuindo-o cada vez à variável x (por hardcoding). Não desanime por quaisquer falhas iniciais. Seja persistente e inquisitivo.


Dados de teste
Input de amostra

x = 0
x = 1
x = -1

Output esperado

y = -1.0
y = 3.0
y = -9.0"""

x =  0
x = float(x)
y = (3 * x **3)- (2 * x **2) + (3 * x)-1
print("y =", y)

x =  1
x = float(x)
y = (3 * x **3)- (2 * x **2) + (3 * x)-1
print("y =", y)

x =  -1
x = float(x)
y = (3 * x **3)- (2 * x **2) + (3 * x)-1
print("y =", y)
