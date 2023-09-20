#include "iostream"
#include "cstdlib"
using namespace std;
void trocar (int *x, int *y) 
{ 
    int aux;
    aux = *x;
    *x = *y;
    *y = aux; }

int main() 
{ 
    int a = 10, b = 20;
    cout << "\nValor inicial de A:" << a ;
    cout << "\nValor inicial de B:" << b ; 
    system("sleep 3");
    trocar ( &a, &b );
    cout << "\nValor Final de A:" << a ;
    cout << "\nValor Final de B:" << b ; 
    system("sleep 3");
}
