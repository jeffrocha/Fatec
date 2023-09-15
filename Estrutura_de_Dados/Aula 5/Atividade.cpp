/*
TAREFA / AVALIAÇÃO CONTÍNUA
Faça o código estruturado para controlar uma LIFO com arranjo não
dinâmico contendo os atributos: nome, idade e salário. Você deverá
implementar as seguintes sub rotinas obrigatŕias :
A. push() para empilhar o registro
B. pop() para remover registros
C. int mostrar() para mostrar os registros da LIFO
D. bool cheia() verificar se a LIFO está cheia
E. bool vazia() verificar se a LIFO está vazia
F. int tela () exibe a tela e armazena a opção de escolha do menu
G. void Controle() controla o menu de controle da LIFO


Atributos comuns da Pilha
TOPO: Esta variável irá sempre guardar a posição do
último elemento a ser inserido na LIFO.
MAX: Esta constante irá armazenar a quantidade
máxima de elementos suportada pela LIFO do tipo arranjo
simples.
DADO: Seria o elemento, número, texto ou
registro a ser empilhado. 50
Sub-rotinas, funções da LIFO
PUSH(): Nome da função que empilha elementos
POP(): Nome da função que desempilha elementos
EXIBIR(): Nome da função que exibe a pilha na tela
VAZIA(): Função que checa se a LIFO está sem
elementos
CHEIA():Função que checa se a LIFO está cheia e não
cabe mais elementos
*/

#include <iostream>
#include <cstdlib>
#include <string>
using namespace std;

int max=-1;

typedef struct lifo Pessoa;
struct  lifo{
    string nome[max];
    int idade[max];
    float salario[max];
}

Pessoa P1

push() //para empilhar o registro
pop()// para remover registros
int mostrar()// para mostrar os registros da LIFO
bool cheia()// verificar se a LIFO está cheia
bool vazia()// verificar se a LIFO está vazia

