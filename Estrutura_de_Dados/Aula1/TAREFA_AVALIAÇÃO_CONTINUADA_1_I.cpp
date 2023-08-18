/******************************************************************************

Ler dois inteiros (variáveis A e B) e imprimir o resultado do quadrado da diferença do primeiro valor pelo
segundo.

*******************************************************************************/

#include <iostream>

using namespace std;

void ObterValores(double &Val_A, double &Val_B)
{
    cout << "Digite o valor de A: ";
    cin >> Val_A;
    cout << "Digite o valor de B: ";
    cin >> Val_B;
}

double CalcQuadrado(double Val_A, double Val_B)
{
    return ((Val_A - Val_B)*(Val_A - Val_B));
}

int main()
{
    double Val_A, Val_B, Val_Quadrado;
    ObterValores(Val_A,Val_B);
    Val_Quadrado=CalcQuadrado(Val_A, Val_B);
    cout<< "o Quadrado da diferença do primeiro valor pelo segundo é: " << Val_Quadrado << endl;
    return 0;
}
