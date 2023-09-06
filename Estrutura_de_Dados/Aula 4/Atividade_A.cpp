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
#include "iostream"
#include "cstdlib"
#include "string.h"
using namespace std;
int const n=5; int linha=-1;

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

// função para ler nomes
string ler_nome() 
{ 
    string nome;
    cout<<"\nNome do processo:";
    cin.ignore();// ignora oque o cin anterior leu, serve para espaços no texto
    getline ( cin, nome);//ler o texto, armazenar tudo
    return nome; 
}

// função para ler a média do aluno
double Ler_valores()
{ 
    double Var_A[n];
    double Var_B[n];
    double Var_C[n];
    double Var_D[n];
    cout<<"\nValor A:"; cin>>Var_A;
    cout<<"\nValor B:"; cin>>Var_B;
    cout<<"\nValor C:"; cin>>Var_C;
    cout<<"\nValor D:"; cin>>Var_D;
    return Var_A,Var_B,Var_C,Var_D; 
}
 
void guardarDados ( ) 
{ 
    linha++; //cin.ignore();
    string nom_temp = ler_nome();
    tb.nome [linha] = nom_temp;
    tb.Var_A [linha] = Ler_valores();
    tb.Var_B [linha] = Ler_valores(); 
    tb.Var_C [linha] = Ler_valores(); 
    tb.Var_D [linha] = Ler_valores(); 
}

void exibir() 
{ 
    system("cls");
 
    for(int i=0;i<=linha;i++) 
    {
        cout<<endl<<tb.nome[i];
        cout<<"-"<<tb.Var_A[i] << endl;
        cout<<"-"<<tb.Var_B[i] << endl;
        cout<<"-"<<tb.Var_C[i] << endl;
        cout<<"-"<<tb.Var_D[i] << endl;
    }

    system("sleep 3"); 
    
}
 
int main() 
{ 
    int tecla=0;
        while (tecla != 3) 
            { 
            system("clear");
            cout<< "\n1 Ler\n2 Exibir\n3 Sair\nitem:";
            cin >> tecla;
            switch(tecla) 
                {
                case 1: guardarDados ( ); break;
                case 2: exibir ( ); break;
                case 3: exit ( 0 ) ; break; 
                }
            } 
return 0; 
}
