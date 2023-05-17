"""
Inteiros: números octais e hexadecimais
Há duas convenções adicionais em Python que são desconhecidas no mundo da matemática. A primeira permite-nos utilizar números numa representação octal.

Se um número inteiro for precedido por um 0O ou 0o prefixo (zero-o), ele será tratado como um valor octal. Isto significa que o número deve conter apenas dígitos retirados do intervalo [0..7].

0o123 é um número octal com um valor (decimal) igual a 83.

A classe print() faz a conversão automaticamente. Experimente isto:

print(0o123)


A segunda convenção permite-nos utilizar números hexadecimais. Estes números devem ser precedidos pelo prefixo 0x ou 0X (zero-x).

0x123 é um número hexadecimal com um valor (decimal) igual a 291. A função print() também pode gerir estes valores. Experimente isto:

print(0x123)"""

print(0o123)
print(0x123)
