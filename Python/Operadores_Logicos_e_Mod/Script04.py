# 4.	Escreva um programa que leia o valor de 3 lados inteiros positivos (A,B e C) de um triângulo.
# No início do programa compare os lados para saber se é uma figura de três lados apenas ou se é um triângulo,
# Se qualquer um dos lados for maior ou igual a soma dos outros dois então a figura não é um triângulo.

# SE ( A >= (B+ C) ou B >=(A+C) ou C >= (B+A)   ). figura não é um triângulo.

# Se for um triangulo, descubra o TIPO de triângulo: ?equilátero?, ?escaleno? ou ?isósceles?.

# Imprima ao final o TIPO de triângulo.

# ATENÇÃO: Pesquisa as fórmulas que faltam na internet, antes de fazer o quadro resumo.
#  Entregar em um documento do tipo DOCX ou PDF, diagrama de blocos (Somente do exercício 3),
#  quadro resumo, código fonte e o print de execução de cada programa executado.

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
