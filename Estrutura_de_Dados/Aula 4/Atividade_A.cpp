/***************************************
Faça o código fonte dos programas A, B da página 26 do livro Estudo dirigido de 
Algoritmos. 
a) Os dados de entrada e saída deverão ser armazenados em um struct com 
várias colunas; 
b) Deverá conter menu com switch case, funções para leitura dos dados 
de entrada e as respectivas funções para calcular os dados de saída; 
c) Tanto os dados 
de entrada quando os dados de saída deverão ser armazenados dentro de structs.

1) Desenvolva os algoritmos
a) Elaborar um programa de computador que efetue a leitura de quatro valores inteiros (variáveis A, B, C e D).
Ao final o programa deve apresentar; 
resultado do produto (variável P) do primeiro com o terceiro valor, e o 
resultado da soma (variável S) do segundo com o quarto valor.

************************************************/
/************************************* 
utilização da função struct 
**************************************/
#include <iostream>
#include <cstdlib>
#include <cstring>
using namespace std;

const int n = 5;
int linha = -1;

struct disciplinas {
    string nome[n];
    double Var_A[n];
    double Var_B[n];
    double Var_C[n];
    double Var_D[n];
    double Var_P[n];
    double Var_S[n];
};

struct disciplinas tb;

string ler_nome() {
    string nome;
    cout << "\nNome do processo:";
    cin.ignore();
    getline(cin, nome);
    return nome;
}

void Ler_valores(double &Var_A, double &Var_B, double &Var_C, double &Var_D, double &Var_P, double &Var_S) {
    cout << "\nValor A:";
    cin >> Var_A;
    cout << "\nValor B:";
    cin >> Var_B;
    cout << "\nValor C:";
    cin >> Var_C;
    cout << "\nValor D:";
    cin >> Var_D;
    Var_P=Var_A*Var_C;
    Var_S=Var_B+Var_D;
}

void guardarDados() {
    linha++;
    string nom_temp = ler_nome();
    tb.nome[linha] = nom_temp;
    Ler_valores(tb.Var_A[linha], tb.Var_B[linha], tb.Var_C[linha], tb.Var_D[linha],tb.Var_P[linha],tb.Var_S[linha]);
    
}

void exibir() {
    for (int i = 0; i <= linha; i++) {
        cout << endl << tb.nome[i]<<endl;
        cout << "Valor A: " << tb.Var_A[i] << endl;
        cout << "Valor B: " << tb.Var_B[i] << endl;
        cout << "Valor C: " << tb.Var_C[i] << endl;
        cout << "Valor D: " << tb.Var_D[i] << endl;
        cout << "Valor P (A*C): " << tb.Var_P[i] << endl;
        cout << "Valor S (B+D): " << tb.Var_P[i] << endl;
    }
    _sleep(50000);
}

int main() {
    int tecla = 0;
    while (tecla != 3) {
        system("cls");
        cout << "1 Ler \n2 Exibir\n3 Sair\nitem:";
        cin >> tecla;
        switch (tecla) {
            case 1:
                guardarDados();
                break;
            case 2:
                exibir();
                break;
            case 3:
                exit(0);
                break;
        }
    }
    return 0;
}