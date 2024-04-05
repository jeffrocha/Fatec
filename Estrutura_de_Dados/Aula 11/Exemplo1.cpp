#include <iostream>    // Inclui a biblioteca para entrada/saída padrão.
#include <cstdlib>     // Inclui a biblioteca para funções como malloc, free e system.
#include <string>      // Inclui a biblioteca para manipulação de strings.

using namespace std;

struct pilha {
    string reg;      // Define um campo "reg" para armazenar o registro na pilha.
    pilha* ant;      // Define um ponteiro "ant" para o elemento anterior na pilha.
};

pilha* topo;         // Declara um ponteiro topo para rastrear o topo da pilha.

void construtor() {
    topo = NULL;      // Inicializa o ponteiro topo como nulo para criar uma pilha vazia.
}

void push(string reg) {
    pilha* newPilha = (pilha*)malloc(sizeof(pilha));  // Aloca memória para um novo elemento de pilha.

    if (newPilha == NULL) {
        cout << "Deu ruim!" << endl;  // Se a alocação falhar, exibe uma mensagem de erro.
        system("sleep 3");             // Aguarda 3 segundos.
        return;                        // Retorna sem adicionar o elemento à pilha.
    }

    newPilha->reg = reg;         // Define o registro no novo elemento.
    newPilha->ant = topo;        // Aponta o novo elemento para o elemento anterior.
    topo = newPilha;            // Atualiza o topo da pilha para o novo elemento.
}

void pop() {
    if (topo == NULL) return;  // Se a pilha estiver vazia, não faz nada.

    pilha* temp = topo;     // Guarda o topo atual da pilha.
    topo = temp->ant;       // Muda o topo para o elemento anterior.
    free(temp);             // Libera a memória do elemento antigo (desempilha).
}

void plotar() {
    pilha* temp = topo;
    system("clear");          // Limpa a tela (dependente do sistema operacional).

    while (temp != NULL) {
        cout << temp->reg << endl;  // Exibe o registro do elemento atual na pilha.
        temp = temp->ant;          // Move para o elemento anterior na pilha.
    }

    system("sleep 2");            // Aguarda 2 segundos entre as impressões.
}

void destrutor() {
    pilha* temp = topo;
    pilha* aux;

    while (temp != NULL) {
        aux = temp;
        temp = temp->ant;
        free(aux);        // Libera a memória de cada elemento na pilha.
    }

    cout << "Pilha destruída..!" << endl;  // Exibe uma mensagem indicando que a pilha foi destruída.
    system("sleep 3");             // Aguarda 3 segundos.
}

int main() {
    construtor();          // Inicializa a pilha.
    push("teste 1");  plotar();  // Adiciona "teste 1" à pilha e exibe a pilha.
    push("teste 2");  plotar();  // Adiciona "teste 2" à pilha e exibe a pilha.
    push("teste 3");  plotar();  // Adiciona "teste 3" à pilha e exibe a pilha.
    pop(); plotar();             // Remove o elemento do topo e exibe a pilha.
    pop(); plotar();
    pop(); plotar();  // Remove o elemento do topo novamente e exibe a pilha.
    destrutor();                // Destrói a pilha e exibe uma mensagem.
    return 0;
}
