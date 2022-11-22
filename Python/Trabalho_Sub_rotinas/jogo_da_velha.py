import os
from encodings import utf_8


def JgDaVelha():
    Valtab = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    Valfim = False
    ValQdMg = [4, 9, 2, 3, 5, 7, 8, 1, 6]

    def ExibirTabuleiro():
        print()
        print('', Valtab[0], "|", Valtab[1], "|", Valtab[2])
        print("---|---|---")
        print('', Valtab[3], "|", Valtab[4], "|", Valtab[5])
        print("---|---|---")
        print('', Valtab[6], "|", Valtab[7], "|", Valtab[8])
        print()

    def PegarNumero():
        while True:
            numero = input()
            try:
                numero = int(numero)
                if numero in range(1, 10):
                    return numero
                else:
                    print("\nNumero nao esta no tabuleiro.")
            except ValueError:
                print("\nIsso nao e um numero. Tente novamente.")
                continue

    def Turno(jogador):
        espaco_colocado = PegarNumero() - 1
        if Valtab[espaco_colocado] == '\033[31m'+"X"+'\033[0;0m' or Valtab[espaco_colocado] == '\033[34m'+"O"+'\033[0;0m':
            print("\nEspaco ja ocupado. Tente colocar em outro.")
            Turno(jogador)
        else:
            Valtab[espaco_colocado] = jogador

    def ChecaVitoria(jogador):
        jogadas = 0

        for x in range(9):
            for y in range(9):
                for z in range(9):
                    if x != y and y != z and z != x:
                        if Valtab[x] == jogador and Valtab[y] == jogador and Valtab[z] == jogador:
                            if ValQdMg[x] + ValQdMg[y] + ValQdMg[z] == 15:
                                if jogador == '\033[31m'+"X"+'\033[0;0m':
                                    print('\033[31m'+'Jogador',
                                          jogador, 'ganhou!\n'+'\033[0;0m')

                                    return True
                                elif jogador == '\033[34m'+"O"+'\033[0;0m':
                                    print('\033[34m'+'Jogador',
                                          jogador, 'ganhou!'+'\033[0;0m')
                                    return True

        for a in range(9):
            if Valtab[a] == '\033[31m'+"X"+'\033[0;0m' or Valtab[a] == '\033[34m'+"O"+'\033[0;0m':
                jogadas += 1
            if jogadas == 9:
                print("O jogo acabou em um empate\n")
                return True

    while not Valfim:
        os.system('cls||clear')
        ExibirTabuleiro()
        Valfim = ChecaVitoria('\033[34m'+"O"+'\033[0;0m')
        if Valfim == True:
            break
        print('\033[31m'+'Jogador X, escolha um espaco.'+'\033[0;0m')
        Turno('\033[31m'+"X"+'\033[0;0m')

        os.system('cls||clear')
        ExibirTabuleiro()
        Valfim = ChecaVitoria('\033[31m'+"X"+'\033[0;0m')
        if Valfim == True:
            break
        print('\033[34m'+'Jogador O, escolha um espaco.'+'\033[0;0m')
        Turno('\033[34m'+"O"+'\033[0;0m')


JgDaVelha()
