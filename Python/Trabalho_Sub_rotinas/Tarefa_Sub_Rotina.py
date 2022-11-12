# crie um projeto livre utilizando subrotinas na programação.
# Projeto escolhido é de uma lista de tarefas;
# Podendo exibir a lista de fora ordenada (código de cadastro,alfabetica ou vencimento);
# Cadastrar as tarefas(cod*=automatico, Nome da tarefa, data de vencimento);
# Editar(a partir de código de cada item)
# Excluir(a partir do código de cadastro)
# sair

import os
import sys
import time
from encodings import utf_8

os.system('cls||clear')

Tarefa = []
ValEscolha = [0]
Valcodigo = []
ValVencimento = []
Numcod = 0
index = 0

ValEscolha = int(input('\nDeseja cadastrar?: 1:sim ou 2:nao '))
if ValEscolha == 1:
    while True:
        Tarefa.append(input('Digite a tarefa: '))
        ValEscolha = int(
            input('deseja continuar cadastrando? 1:sim ou 2:nao '))
        Valcodigo.append(Numcod)
        Numcod += 1
        if ValEscolha == 1:
            continue
        else:
            break

while (index < Numcod):
    print('codigo:', Valcodigo[index], 'Tarefa:', Tarefa[index])
    index += 1
