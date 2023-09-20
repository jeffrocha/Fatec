#include <iostream>
#include <string>
#include <iomanip>
#include <limits>
#include <locale>

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

    void push() {
        if (!cheia()) {
            Registro novoRegistro;
            cout << "Digite o nome: ";
            cin >> novoRegistro.nome;
            
            cout << "Digite a idade: ";
            while (!(cin >> novoRegistro.idade) || novoRegistro.idade < 0) {
                cout << "Idade inválido. Digite novamente: ";
                cin.clear();
                cin.ignore(numeric_limits<streamsize>::max(), '\n');
            }

            cout << "Digite o salário: ";
            while (!(cin >> novoRegistro.salario) || novoRegistro.salario < 0.0) {
                cout << "salário inválido. Digite novamente: ";
                cin.clear();
                cin.ignore(numeric_limits<streamsize>::max(), '\n');
            }
            
            topo++;
            pilha[topo] = novoRegistro;
            cout << "Registro empilhado com sucesso!" << endl;
        } else {
            cout << "A pilha estão cheia. não é possível empilhar mais registros." << endl;
        }
    }

    void pop() {
        if (!vazia()) {
            topo--;
            cout << "Registro desempilhado com sucesso!" << endl;
        } else {
            cout << "A pilha estão vazia. não é possível desempilhar registros." << endl;
        }
    }

    void mostrar() {
        if (!vazia()) {
            cout << "Registros na pilha:" << endl;
            cout << left << setw(20) << "Nome" << setw(10) << "Idade" << setw(15) << "salário" << endl;
            for (int i = topo; i >= 0; i--) {
                cout << left << setw(20) << pilha[i].nome << setw(10) << pilha[i].idade << setw(15) << fixed << setprecision(2) << pilha[i].salario << endl;
            }
        } else {
            cout << "A pilha estão vazia." << endl;
        }
    }

    bool cheia() {
        return topo == MAX - 1;
    }

    bool vazia() {
        return topo == -1;
    }
};

int tela() {
    int opcao;
    cout << "Escolha uma opção:" << endl;
    cout << "1. Empilhar registro" << endl;
    cout << "2. Mostrar registros" << endl;
    cout << "3. Desempilhar registro" << endl;  
    cout << "4. Sair" << endl;
    cout << "opção: ";
    cin >> opcao;
    return opcao;
}

int main() {
    setlocale(LC_ALL, "Portuguese");
    LIFO lifo;
    int opcao;
    system("cls");
    do {
        opcao = tela();
        switch (opcao) {
            case 1:
                lifo.push();
                break;
            case 2:  
                lifo.mostrar();
                break;
            case 3:  
                lifo.pop();
                break;
            case 4:
                cout << "Encerrando o programa." << endl;
                break;
            default:
                cout << "opção inválido. Tente novamente." << endl;
        }
    } while (opcao != 4);

    return 0;
}
