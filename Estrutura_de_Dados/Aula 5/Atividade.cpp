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
#include <string>
#include <iomanip>
#include <limits>

using namespace std;

const int MAX = 50;

struct Registro {
    string nome;
    int idade;
    double salario;
};

class LIFO {
private:
    Registro pilha[MAX];
    int topo;

public:
    LIFO() {
        topo = -1;
    }

    bool cheia() const {
        return topo >= MAX - 1;
    }

    bool vazia() const {
        return topo == -1;
    }

    void push() {
        if (!cheia()) {
            Registro novoRegistro;
            cout << "Digite o nome: ";
            cin >> novoRegistro.nome;
            
            cout << "Digite a idade: ";
            while (!(cin >> novoRegistro.idade) || novoRegistro.idade < 0) {
                cout << "Idade inválida. Digite novamente: ";
                cin.clear();
                cin.ignore(numeric_limits<streamsize>::max(), '\n');
            }

            cout << "Digite o salário: ";
            while (!(cin >> novoRegistro.salario) || novoRegistro.salario < 0.0) {
                cout << "Salário inválido. Digite novamente: ";
                cin.clear();
                cin.ignore(numeric_limits<streamsize>::max(), '\n');
            }
            
            topo++;
            pilha[topo] = novoRegistro;
            cout << "Registro empilhado com sucesso!" << endl;
        } else {
            cout << "A pilha está cheia. Não é possível empilhar mais registros." << endl;
        }
    }

    void pop() {
        if (!vazia()) {
            topo--;
            cout << "Registro desempilhado com sucesso!" << endl;
        } else {
            cout << "A pilha está vazia. Não é possível desempilhar registros." << endl;
        }
    }

    void mostrar() {
        if (!vazia()) {
            cout << "Registros na pilha:" << endl;
            cout << left << setw(20) << "Nome" << setw(10) << "Idade" << setw(15) << "Salário" << endl;
            for (int i = topo; i >= 0; i--) {
                cout << left << setw(20) << pilha[i].nome << setw(10) << pilha[i].idade << setw(15) << fixed << setprecision(2) << pilha[i].salario << endl;
            }
        } else {
            cout << "A pilha está vazia." << endl;
        }
    }
};

int main() {
    LIFO pilha;

    int escolha;
    do {
        cout << "\nEscolha uma operação:" << endl;
        cout << "1. Empilhar um registro" << endl;
        cout << "2. Desempilhar um registro" << endl;
        cout << "3. Mostrar registros" << endl;
        cout << "4. Sair" << endl;
        cout << "Opção: ";
        cin >> escolha;

        switch (escolha) {
            case 1:
                pilha.push();
                break;
            case 2:
                pilha.pop();
                break;
            case 3:
                pilha.mostrar();
                break;
            case 4:
                cout << "Saindo do programa." << endl;
                break;
            default:
                cout << "Opção inválida. Tente novamente." << endl;
        }
    } while (escolha != 4);

    return 0;
}
