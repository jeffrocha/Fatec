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

void maiorMenor () 
{
int maior, menor;
int tot = sizeof (xy) / sizeof (int);

for (int i = 0; i < tot; i++)
{
    if (xy[i] > maior || i == 0)
	maior = xy[i];
	
    if (xy[i] < menor || i == 0)
	menor = xy[i];
}
  
cout << "\nMaior: " << maior;
cout << "\nMenor: " << menor << endl;
getchar();
}

int main (){
maiorMenor ();
return 0;
}
