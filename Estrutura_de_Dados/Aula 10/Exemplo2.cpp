#include <iostream>    // Inclui a biblioteca para entrada/saída padrão.
#include <cstdlib>     // Inclui a biblioteca para funções como malloc e free.

using namespace std;   // Define o escopo do namespace padrão como "std".

typedef struct me {
    int pos;       // Define um campo "pos" para armazenar a posição do nó na lista.
    me* liga;      // Define um ponteiro "liga" para o próximo nó na lista.
} cad;

int cont = 0;      // Inicializa um contador para o número de elementos na lista.

cad* primeiroNO = NULL;  // Inicializa um ponteiro para o primeiro nó como nulo.
cad* ultimoNo = NULL;    // Inicializa um ponteiro para o último nó como nulo.

void alocar() {
    cont++;  // Incrementa o contador de elementos na lista.
    cad* newcad = (cad*)malloc(sizeof(cad));  // Aloca memória para um novo nó.

    if (cont == 1) {
        newcad->liga = NULL;  // Se for o primeiro nó, define o ponteiro "liga" como nulo.
        newcad->pos = cont;   // Define a posição do primeiro nó como 1.
        primeiroNO = newcad;  // Atualiza o ponteiro do primeiro nó para o novo nó.
        ultimoNo = newcad;    // Atualiza o ponteiro do último nó para o novo nó.
    } else {
        ultimoNo->liga = newcad;  // Liga o novo nó ao último nó existente.
        newcad->liga = NULL;      // Define o ponteiro "liga" do novo nó como nulo.
        newcad->pos = cont;       // Define a posição do novo nó com base no contador.
        ultimoNo = newcad;        // Atualiza o ponteiro do último nó para o novo nó.
    }
}

void exibir() {
    cad* temp;         // Declara um ponteiro temporário para percorrer a lista.
    temp = primeiroNO;  // Inicializa o ponteiro temporário com o primeiro nó.

    while (temp != NULL) {
        cout << temp->pos << endl;  // Exibe a posição do nó.
        temp = temp->liga;          // Avança para o próximo nó na lista.
        system("sleep 2");         // Aguarda 2 segundos entre as impressões.
    }
}

void destruir() {
    cad* temp;         // Declara um ponteiro temporário para percorrer a lista.
    temp = primeiroNO;  // Inicializa o ponteiro temporário com o primeiro nó.

    while (temp->liga != NULL) {
        cad* proximo = temp->liga;  // Salva o próximo nó antes de liberar o nó atual.
        free(temp);                // Libera a memória alocada para o nó atual.
        temp = proximo;            // Avança para o próximo nó.
    }

    primeiroNO = NULL;   // Define o ponteiro do primeiro nó como nulo para indicar lista vazia.
    ultimoNo = NULL;     // Define o ponteiro do último nó como nulo.
    system("clear");     // Limpa a tela (dependente do sistema operacional).
}

int main() {
    for (int i = 0; i <= 4; i++) {
        alocar();  // Chama a função "alocar()" para criar cinco nós na lista.
    }
    exibir();    // Chama a função "exibir()" para mostrar os elementos na lista.
    destruir();  // Chama a função "destruir()" para liberar a memória alocada e limpar a tela.

    return 0;  // Retorna 0 para indicar que o programa foi executado com sucesso.
}
