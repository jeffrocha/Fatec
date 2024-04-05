import math
import os
import sys
import time

os.system('cls||clear')

Const_G = 9.8
Altura = 0
Temp_Queda = 0.0


Altura = int(input('Digite a altura em metros: '))

Temp_Queda = math.sqrt((2*Altura)/2)

print(f'O tempo de queda é: {Temp_Queda:.3f}')

time.sleep(5)
sys.exit
