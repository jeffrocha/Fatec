# 1.	CÁLCULO DA MÉDIA GEOMÉTRICA: Faça um algoritmo para calcular a Média Geométrica entre duas notas.
# Se  o aluno tiver mais de 20 faltas, exiba ?reprovado por faltas?,
# se a nota for menor que 3, exiba ?reprovado por notas?,
# se o aluno tirar mais que 3 e menor que 5,  ?Aluno de Recuperação?,
# se o aluno tirar mais que 5 e menos que 6, ?Aluno de Exame?,
# se o aluno tirar mais do que 6, ?Aluno Aprovado?.
# Cuide para que as notas de entrada assim como as faltas não sejam valores negativos. import os
import sys
import time
from encodings import utf_8

coding: utf_8

os.system('cls||clear')
ValFaltas = 0
ValNota = 0
while True:
    ValFaltas = int(input('Digite a quantidade de faltas do aluno: '))
    if ValFaltas < 0:
        os.system('cls||clear')
        print('Valor de faltas negativo, digite novamente\n')
        continue
    else:
        break
if ValFaltas > 20:
    print('faltas superior a 20, Aluno REPROVADO por FALTA')
    time.sleep(1)
    os._exit(0)

while True:
    ValNota = int(input('Digite a nota do aluno: '))
    if ValNota < 0:
        os.system('cls||clear')
        print('Valor da nota negativo, digite novamente\n')
        continue
    else:
        break

if (ValNota >= 0) and (ValNota <= 2):
    print('Aluno REPROVADO por NOTA')
if (ValNota >= 3) and (ValNota <= 4):
    print('Aluno em RECUPERACAO')
if (ValNota >= 5) and (ValNota <= 6):
    print('Aluno em EXAME')
if (ValNota > 6):
    print('Aluno APROVADO')

time.sleep(1)
sys.exit
