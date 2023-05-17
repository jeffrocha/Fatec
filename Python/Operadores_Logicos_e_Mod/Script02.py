# Escreva um programa para ler o número de lados (NumLados) de um polígono regular e a medida do lado (MedLado)
# Se o número de lados for igual a 3 imprima ?TRIÂNGULO?,
# Calcule e mostre a área do triângulo (Use o Teorema de HERON para calcular a área do triangulo somente com lados, pesquise no google)
# Se o número de lados for igual a 4 imprima ?QUADRADO?, calcule  e mostre a área do quadrado.
# Se o número de lados for igual a 5 imprime  ?PENTÁGONO?, calcule e mostre a área do pentágono.
# (Pesquise no google com se calcula a area de um PENTAGONO)
# Acrescente as seguintes mensagens ao exercício 1 conforme o caso.
# Caso o número de lados seja inferior a 3 escrever NÃO É UM POLÍGONO.
# Caso o número de lados seja superior a 5 escrever POLÍGONO NÃO IDENTIFICADO.

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
