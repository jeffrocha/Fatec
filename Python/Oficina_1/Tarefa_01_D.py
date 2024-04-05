import os
import sys
import time

os.system('cls||clear')

Diametro = 0.0
Perimetro = 0.0
Raio = 0.0
Area = 0.0
Const_PI = 3.14

Perimetro = int(input('Entre com o valor do Perimetro: '))
Diametro = Perimetro / Const_PI
print(f'O valor do Diametro é: {Diametro:.3f}')
Raio = Diametro/2
print(f'O valor do raio é: {Raio:.3f}')
Area = Raio*Raio*Const_PI
print(f'O valor da área é: {Area:.3f}')

time.sleep(5)
sys.exit
