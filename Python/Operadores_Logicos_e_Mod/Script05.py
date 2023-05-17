# 5.	Desenvolver um programa que calcule a tabuada.
import os
import sys
import time
from encodings import utf_8

coding: utf_8

os.system('cls||clear')
ValNum = ValMult = 0
ValRep = 1
while True:
    ValNum = int(input('\nDigite o Valor da tabuada que deseja exibir: '))
    if ValNum <= 0:
        print('\nValor menor ou igual a zero, digite outro numero')
        continue
    else:
        while True:
            ValMult = int(
                input('\nDigite o numero que deseja que a tabuada va: '))
            if ValMult <= 0:
                print('\nValor menor ou igual a zero, digite outro numero')
                continue
            else:
                break
    break

while ValRep <= ValMult:
    print(ValNum, ' X ', ValRep, ' = ', (ValNum * ValRep))
    ValRep += 1
