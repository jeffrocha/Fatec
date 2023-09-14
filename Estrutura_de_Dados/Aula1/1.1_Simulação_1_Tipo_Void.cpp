#include <iostream>
#include "cstdlib"
#include "math.h"
using namespace std;

double const pi = 3.14; // constante
double altura = 5.55; // variável global
void verVolume ( double raio ); // declaração
int main() {
double raio = 10.5;
verVolume ( raio ); // chamada por
verVolume ( 13.4 ); // chamada por valor
system("sleep 5"); }
// código do void
void verVolume ( double raio )
{ double volume = raio * raio * pi * altura;
 cout<< "\nVolume :" << volume << endl;
return; }
