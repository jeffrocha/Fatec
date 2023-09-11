/*II - Crie um algoritmo que tenha um vetor de idades e um vetor de nomes,
cujos dados deverão ser lidos pelo teclado. Ao final Exiba o nome da pessoa
de maior idade, menor idade, a média das idades e o saldo das idades. */

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main() {
    int n;
    cout << "Quantas pessoas deseja cadastrar? ";
    cin >> n;

    vector<string> nomes(n);
    vector<int> idades(n);


    for (int i = 0; i < n; i++) {
        cout << "Digite o nome da pessoa " << i + 1 << ": ";
        cin.ignore(); 
        getline(cin, nomes[i]);

        cout << "Digite a idade da pessoa " << i + 1 << ": ";
        cin >> idades[i];
    }

    int maiorIdade = idades[0];
    int menorIdade = idades[0];
    string nomeMaiorIdade = nomes[0];
    string nomeMenorIdade = nomes[0];
    int somaIdades = 0;

    for (int i = 0; i < n; i++) {
        somaIdades += idades[i];

        if (idades[i] > maiorIdade) {
            maiorIdade = idades[i];
            nomeMaiorIdade = nomes[i];
        }

        if (idades[i] < menorIdade) {
            menorIdade = idades[i];
            nomeMenorIdade = nomes[i];
        }
    }
    double mediaIdades = static_cast<double>(somaIdades) / n;

    cout << "Pessoa de maior idade: " << nomeMaiorIdade << " (Idade: " << maiorIdade << " anos)" << endl;
    cout << "Pessoa de menor idade: " << nomeMenorIdade << " (Idade: " << menorIdade << " anos)" << endl;
    cout << "Média das idades: " << mediaIdades << " anos" << endl;
    cout << "Saldo das idades: " << somaIdades << " anos" << endl;

    return 0;
}
