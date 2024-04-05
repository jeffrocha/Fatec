"""Lista de prioridades
Uma vez que é novo nos operadores Python, não queremos apresentar neste momento a lista completa de prioridades dos operadores.

Em vez disso, vamos mostrar-lhe a sua forma truncada, e vamos expandi-la de forma consistente à medida que introduzimos novos operadores.

Veja a tabela abaixo:

Prioridade	Operador	
1	+, -	unário
2	**	
3	*, /, //, %	
4	+, -	binário

Nota: enumerámos os operadores por ordem das prioridades mais altas (1) até às mais baixas (4).


Tente trabalhar com a seguinte expressão:

print(2 * 3 % 5)


Ambos os operadores (* e %) têm a mesma prioridade, pelo que o resultado só pode ser adivinhado quando se conhece a direção de ligação. Como pensa? Qual é o resultado?

Verifique

Operadores e parêntesis
Claro, é sempre permitido utilizar parêntesis, o que pode alterar a ordem natural de um cálculo.

De acordo com as regras aritméticas, as subexpressões entre parêntesis são sempre calculadas em primeiro lugar.

Pode-se usar tantos parêntesis quantos forem necessários, e são frequentemente usados para melhorar a legibilidade de uma expressão, mesmo que não alterem a ordem das operações.

Um exemplo de uma expressão com vários parêntesis é este:

print((5 * ((25 % 13) + 100) / (2 * 13)) // 2)


Tente calcular o valor que é impresso para a consola. Qual é o resultado da função print()
"""
print(2 * 3 % 5)
print()
print((5 * ((25 % 13) + 100) / (2 * 13)) // 2)
