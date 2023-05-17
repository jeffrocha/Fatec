"""
Operadores aritméticos: divisão inteira
Um sinal // (dupla barra) é um operador de divisão inteira. Difere do operador padrão / em dois detalhes:

o seu resultado não tem a parte fracionada - está ausente (para inteiros), ou é sempre igual a zero (para floats); isto significa que os resultados são sempre arredondados;
está em conformidade com a regra inteiro vs. float.
Execute o exemplo abaixo e veja os resultados:
"""

print(6 // 3)
print(6 // 3.)
print(6. // 3)
print(6. // 3.)
print()
print(6 // 4)
print(6. // 4)
print()
print(-6 // 4)
print(6. // -4)

#floor division
