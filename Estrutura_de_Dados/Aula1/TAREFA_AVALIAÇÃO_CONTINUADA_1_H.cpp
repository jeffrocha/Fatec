/* 
h) Elaborar um programa que calcule e apresente o volume de uma caixa retangular, por meio da fórmula
VOLUME ← COMPRIMENTO * LARGURA * ALTURA.
*/

#include <iostream>
using namespace std;

void obterDimensoes(double &Val_comprimento, double &Val_largura, double &Val_altura) 
{
    cout << "Digite o comprimento da caixa: ";
    cin >> Val_comprimento;
    cout << "Digite a largura da caixa: ";
    cin >> Val_largura;
    cout << "Digite a altura da caixa: ";
    cin >> Val_altura;
}

double calcularVolume(double Val_comprimento, double Val_largura, double Val_altura) 
{ 
    return Val_comprimento * Val_largura * Val_altura;
}

int main() 
{
    double Val_comprimento, Val_largura, Val_altura, volume;
    obterDimensoes(Val_comprimento, Val_largura, Val_altura); 
    volume = calcularVolume(Val_comprimento, Val_largura, Val_altura); 
    cout << "O volume da caixa retangular é: " << volume << endl;
    return 0;
}
