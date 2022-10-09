# Configura o idioma em Português
import os
import sys
import time
from distutils.command.clean import clean
from encodings import utf_8

coding: utf_8

NOTA1 = 0
NOTA2 = 0
MEDIA = 0
# cálculos

os.system('cls||clear')

NOTA1 = float(input('Digite Nota1:'))
NOTA2 = float(input('Digite Nota2:'))

# cálculos
MEDIA = (NOTA1+NOTA2)/2

# exibindo resultados na tela
print('A média é:', MEDIA)

print('\n')  # pula uma linha
time.sleep(5)  # pausa de  5 segundos
sys.exit  # comando de fim do programa
