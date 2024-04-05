/******************************************************************************

Pilha estatica em c++

*******************************************************************************/
#include <iostream>
#include <cstdlib>
using namespace std;

#define max 3 // a última posição será 2

int cont; // contar os elementos da pilha
int topo;

typedef struct lifo Pilha;
struct lifo {
    int dado[max];
};

Pilha p1;

int lerDado() {
    int d;
    cout << "Digite um valor inteiro:";
    cin >> d;
    return d;
}

bool vazia() {
    return topo == -1;
}

bool cheia() {
    return topo >= max - 1;
}

void construtor() {
    topo = -1;
    cont = 0;
}

void push(int valor) {
    if (cheia()) {
        cout << "Pilha cheia!" << endl;
        return;
    }

    topo++;
    p1.dado[topo] = valor;
    cont++; // incrementa o tamanho da pilha
}

void pop() {
    if (vazia()) {
        cout << "Pilha vazia!" << endl;
        return;
    }

    topo--;
    cont--;
}

void plotar() {
    system("cls");
    cout << "Conteudo da pilha:" << endl;
    for (int i = topo; i >= 0; i--) {
        cout << p1.dado[i] << endl;
    }
    _sleep(1000);
}

void destrutor() {
    system("cls");
    cout << "Destruindo a pilha..." << endl;
    while (!vazia()) {
        pop();
    }
    cout << "Pilha destruída!" << endl;
    _sleep(1000);
}

int main() {
    construtor();

    for (int i = 0; i < max; i++) {
        int valor = lerDado();
        push(valor);
        plotar();
    }

    for (int i = 0; i < max; i++) {
        pop();
        plotar();
    }

    destrutor();

    return 0;
}
