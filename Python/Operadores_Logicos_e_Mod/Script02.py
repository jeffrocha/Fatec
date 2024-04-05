# Escreva um programa para ler o n�mero de lados (NumLados) de um pol�gono regular e a medida do lado (MedLado)
# Se o n�mero de lados for igual a 3 imprima ?TRI�NGULO?,
# Calcule e mostre a �rea do tri�ngulo (Use o Teorema de HERON para calcular a �rea do triangulo somente com lados, pesquise no google)
# Se o n�mero de lados for igual a 4 imprima ?QUADRADO?, calcule  e mostre a �rea do quadrado.
# Se o n�mero de lados for igual a 5 imprime  ?PENT�GONO?, calcule e mostre a �rea do pent�gono.
# (Pesquise no google com se calcula a area de um PENTAGONO)
# Acrescente as seguintes mensagens ao exerc�cio 1 conforme o caso.
# Caso o n�mero de lados seja inferior a 3 escrever N�O � UM POL�GONO.
# Caso o n�mero de lados seja superior a 5 escrever POL�GONO N�O IDENTIFICADO.

import math
import os
import sys
import time
from encodings import utf_8

coding: utf_8

os.system('cls||clear')
NumLados = 0
MedLado = 0
NumArea = 0.0

while True:
    NumLados = int(input('Digite o Numero de lados: '))
    if NumLados < 3:
        os.system('cls||clear')
        print('NAO E UM POLIGONO\n')
        continue
    if NumLados == 3:
        os.system('cls||clear')
        print('TRIANGULO\n')
        break
    if NumLados == 4:
        os.system('cls||clear')
        print('QUADRADO\n')
        break
    if NumLados == 5:
        os.system('cls||clear')
        print('PENTAGONO\n')
        break
    if NumLados > 5:
        os.system('cls||clear')
        print('POLIGONO NAO IDENTIFICADO\n')
        continue
MedLado = float(input('\nDIGITE O VALOR DOS LADOS: '))
if MedLado == 3:
    NumArea = ((MedLado * MedLado * 1.732)/4)
    print(f'A area do triangulo e:{NumArea:.3f}\n')
elif MedLado == 4:
    NumArea = (MedLado * MedLado)
    print(f'A area do quadrado e:{NumArea:.3f}\n')
elif MedLado == 5:
    NumArea = (1.72 * MedLado * MedLado)
    print(f'A area do pentagono e:{NumArea:.3f}\n')
