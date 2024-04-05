/******************************************************************************
I- Faça o algoritmo para calcular o valor de uma prestação em atraso com
base na multa de 2% e também do juros mensal de 1% sobre o valor principal.
Declare vetores não explícitos para entrada do valor da dívida, Divida [5] e da
quantidade de dias em atraso: Dias [5]. Crie os vetores de saída, ValorMulta[5],
ValorJuros[5] e ValorPagar [5]. Ao final imprima todos os vetores de saída.
Faça um menu de controle para controlar o programa. 
*******************************************************************************/
#include <iostream>
#include <iomanip> 

using namespace std;

int main() 
{
    const int tamanho = 5;
    double Divida[tamanho];
    int Dias[tamanho];
    double ValorMulta[tamanho];
    double ValorJuros[tamanho];
    double ValorPagar[tamanho];
    int escolha;
    
    do 
    {
        cout << "Menu de Controle:" << endl;
        cout << "1) Calcular prestação em atraso" << endl;
        cout << "2) limpar o terminal"<<endl;
        cout << "3) Sair" << endl;
        cout << "Escolha uma opção: ";
        cin >> escolha;
        switch (escolha) {
            case 1:
                for (int i = 0; i < tamanho; i++) {
                    cout << "Digite o valor da dívida " << i + 1 << ": R$ ";
                    cin >> Divida[i];
                    cout << "Digite a quantidade de dias em atraso da dívida " << i + 1 << ": ";
                    cin >> Dias[i];
                    ValorMulta[i] = Divida[i] * 0.02;
                    ValorJuros[i] = Divida[i] * 0.01 * Dias[i];
                    ValorPagar[i] = Divida[i] + ValorMulta[i] + ValorJuros[i];}
                    cout << left << setw(10) << "Dívida" << setw(10) << "Multa" << setw(10) << "Juros" << setw(15) << "Total a Pagar" << endl;
                    
                    for (int i = 0; i < tamanho; i++) {
                        cout << setw(10) << i + 1 << fixed << setprecision(2) << setw(10) << ValorMulta[i] << setw(10) << ValorJuros[i] << setw(15) << ValorPagar[i] << endl;}
                    break;
            case 2:
                system("cls||clear");
                break;
            case 3:
                cout << "Saindo do programa. Obrigado!" << endl;
                break;
            default:
                system("cls||clear");
                cout << "> > Opção anterior inválida! < < " << endl;}
        cout<<endl;
        system("sleep 3");
    } while (escolha != 3);
    return 0;
}
