import os  # Módulo dos Python
import sys
import time
from encodings import utf_8

coding: utf_8  # type: ignore
area = 0  # variáveis
raio = 0
pi = 3.14
os.system('cls||clear')  # apaga a tela
raio = input('Digite o valor do raio:')  # ler raio
area = (float(raio) ** 2) * pi  # calcula a area

print('\n')  # pula uma linha
print(f'A area será:{area:.3f}')  # exibe area
time.sleep(5)  # pausa de 5 segundos
sys.exit  # força a finalização do programa teste
