# 3.	Escreva um programa para ler 3 valores inteiros e escrever o maior deles.
#  Considere que o usuário não informará valores iguais, valores nulos ou valores negativos.
#

import os
import sys
import time
from encodings import utf_8

coding: 8859-1

os.system('cls||clear')
ValNum = [0, 0, 0]

while True:
    ValNum[0] = int(input('\nDigite o primeiro valor: '))
    if ValNum[0] <= 0:
        print('Valor menor ou igual a zero, digite novamente\n')
        continue
    else:
        break
while True:
    ValNum[1] = int(input('\nDigite o segundo valor: '))
    if ValNum[1] <= 0:
        print('Valor menor ou igual a zero, digite novamente\n')
        continue
    elif (ValNum[1] == ValNum[0]):
        print('Segundo Valor igual o primeiro, digite novamente\n')
        continue
    else:
        break
while True:
    ValNum[2] = int(input('\nDigite o segundo valor: '))
    if ValNum[2] <= 0:
        print('Valor menor ou igual a zero, digite novamente\n')
        continue
    elif (ValNum[2] == ValNum[0]) or (ValNum[2] == ValNum[1]):
        print('Terceiro Valor igual aos anterior, digite novamente\n')
    else:
        break
print('\nprimeiro valor:', ValNum[0])
print('segundo valor:', ValNum[1])
print('Terceiro valor:', ValNum[2])
ValNum.sort(reverse=True)
print('Maior valor:', ValNum[0])
