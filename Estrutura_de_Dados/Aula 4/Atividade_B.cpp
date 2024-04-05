/***************************************
Faça o código fonte dos programas A, B da página 26 do livro Estudo dirigido de 
Algoritmos. 
a) Os dados de entrada e sa�da deverão ser armazenados em um struct com 
várias colunas; 
b) Deverá conter menu com switch case, fun��o para leitura dos dados 
de entrada e as respectivas fun��o para calcular os dados de sa�da; 
c) Tanto os dados 
de entrada quando os dados de sa�da deverão ser armazenados dentro de structs.

1) Desenvolva os algoritmos
b) Ler o valor correspondente ao salario mensal (variavel SM) de um trabalhador e tamb�m o valor do
percentual de reajuste (variavel PR) a ser atribuida. Apresentar o valor do novo salario (variavel NS).

************************************************/

/*
ENTRADA 
    salario MENSAL (SM)
    REAJUSTE salario EM PORCENTUAL (RP)

PROCESSOR
    NOVO salario(NS=SM+((SM*RP/100))

SAIDA
    NOVO salario NS

*/
#include <iostream>

using namespace std;

struct salario {
    float SM;
    float RP;
    float NS;
};
void lerDados(salario &dados) {
    cout << "Informe o salario mensal:R$";
    cin >> dados.SM;
    cout << "Informe o percentual de reajuste(%): ";
    cin >> dados.RP;
    
}


void calcularNS(salario &dados) {
    dados.NS = dados.SM + (dados.SM * dados.RP / 100);
}

int main() {
    salario dados;

    int escolha;
    system("cls");
    do {
        cout << endl<< "Menu:" << endl;
        cout << "1. Calcular novo salario" << endl;
        cout << "2. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> escolha;
        switch (escolha) {
            case 1:
                lerDados(dados);
                calcularNS(dados);
                cout << "Novo salario: R$" << dados.NS << endl;
                break;
            case 2:
                cout << "Saindo do programa." << endl;
                break;
            default:
                cout << "op��o invalido. Tente novamente." << endl;
        }
    } while (escolha != 2);

    return 0;
}