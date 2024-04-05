#include "iostream"
#include "cstdlib"
using namespace std;
int main () {
    setlocale(LC_ALL, "Portuguese");
    int aux = 10; // cria uma variável inteira
    int *ptaux; // cria um ponteiro inteiro
    ptaux = &aux; // inicializa o ponteiro
    cout<< "\nO valor de aux é:"<< aux;
    cout<< "\nO endereço de memória de aux é :"<< &aux;
    cout<< "\nO endereço de memória de ptaux é :"<< ptaux;
    cout<< "\nO endereço de memória ptaux é:" << &ptaux;
    cout<< "\nO valor de aux é:" << *ptaux;
    system("pause");
    return 0;
} 

