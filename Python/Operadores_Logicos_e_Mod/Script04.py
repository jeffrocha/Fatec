# 4.	Escreva um programa que leia o valor de 3 lados inteiros positivos (A,B e C) de um tri�ngulo.
# No in�cio do programa compare os lados para saber se � uma figura de tr�s lados apenas ou se � um tri�ngulo,
# Se qualquer um dos lados for maior ou igual a soma dos outros dois ent�o a figura n�o � um tri�ngulo.

# SE ( A >= (B+ C) ou B >=(A+C) ou C >= (B+A)   ). figura n�o � um tri�ngulo.

# Se for um triangulo, descubra o TIPO de tri�ngulo: ?equil�tero?, ?escaleno? ou ?is�sceles?.

# Imprima ao final o TIPO de tri�ngulo.

# ATEN��O: Pesquisa as f�rmulas que faltam na internet, antes de fazer o quadro resumo.
#  Entregar em um documento do tipo DOCX ou PDF, diagrama de blocos (Somente do exerc�cio 3),
#  quadro resumo, c�digo fonte e o print de execu��o de cada programa executado.

import os
import sys
import time
from encodings import utf_8

coding: utf_8

os.system('cls||clear')
NumA = NumB = NumC = 0

while True:
    NumA = int(input('\nDigite o lado A: '))
    if NumA <= 0:
        print('\nValor menor ou igual a zero, Digite novamente')
        continue
    else:
        while True:
            NumB = int(input('\nDigite o lado B: '))
            if NumB <= 0:
                print('\nValor menor ou igual a zero, Digite novamente')
                continue
            else:
                while True:
                    NumC = int(input('\nDigite o lado C: '))
                    if NumC <= 0:
                        print('\nValor menor ou igual a zero, Digite novamente')
                        continue
                    else:
                        break
                break
        break
    break

if (NumA+NumB > NumC) and (NumA+NumC > NumB) and (NumB+NumC > NumA):
    print('\nOs 3 lados formam um triangulo')
    if (NumA == NumB) and (NumA == NumC):
        print(' Equilatero')
    else:
        if (NumA == NumB) or (NumA == NumC) or (NumB == NumC):
            print(' Isosceles')
        else:
            print(' Escaleno')
else:
    print('\nOs 3 lados nao formam um triangulo')
