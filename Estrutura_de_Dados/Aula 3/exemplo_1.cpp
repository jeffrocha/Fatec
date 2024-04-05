/* 
Sub rotina void maiorMenor ( )

Você pode também declarar vetores 
em forma de lista, neste caso os vetores 
serão alimentados no ato da declaração 
do vetor. 
Por exemplo: 
int a [ ] = {1,2,3,4}, 
string b [ ] = {“a”,”b”,”c”,”d”},
char sex [ ] = {‘F’,’M’,’F’}, 
bool x [ ] = {true, false, true, false}. 

Considere o vetor a seguir: 
int xy [ ] = {1, 5, 10, -1};

Vamos fazer um código para retornar o maior valor e
outro para retornar o menor valor desta lista. 
Atenção:
1) Indente/Organize o Código;
2) Coloque um menu;
3) Compile e execute no IDE.

PROGRAMA 1*/  
  
#include "iostream"
#include "cstdlib"
  
using namespace std;

int xy[] = { 1, 5, 10, -1 };

void maiorMenor (int &maior, int &menor) 
{
int tot = sizeof (xy) / sizeof (int);
for (int i = 0; i < tot; i++)
{
    if (xy[i] > maior || i == 0)
	maior = xy[i];
	
    if (xy[i] < menor || i == 0)
	menor = xy[i];
}

}

int main (){
int maior,menor,opcao;
maiorMenor (maior, menor);
do{
    cout<<"Digite a uma opção"<<endl;
    cout<<"1 - Maior Valor"<<endl;
    cout<<"2 - Menor Valor"<<endl;
    cout<<"3 - Sair"<<endl;
    cin>>opcao;
    switch(opcao){
        case 1:
            cout<<"Maior Valor: "<<maior<<endl<<endl;
            break;
            
        case 2:
            cout<<"Menor Valor"<<menor<<endl<<endl;
            break;
            
        case 3:
            cout << "Encerrando o programa." << endl<<endl;
            cout<<" Obrigado! "<<endl;
            break;
            
        default:
            cout << "Opção inválida. Tente novamente." << endl<<endl;
            break;
        }
        system("sleep 3");
    } while (opcao != 3);
return 0;
}

