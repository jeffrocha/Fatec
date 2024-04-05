/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

public class Calculadora {
    private Robo robo;

    public Calculadora(Robo robo){
        this.robo=robo;
    }

    public Robo getRobo() {
        return robo;
    }

    public void setRobo(Robo robo) {
        this.robo = robo;
    }

    public double Somar(double numero1, double numero2){
        return numero1 + numero2;
    }

    public double Subtrair(double numero1, double numero2){
        return numero1 - numero2;
    }

    public double Multiplicar(double numero1, double numero2){
        return numero1 * numero2;
    }

    public double Dividir(double numero1, double numero2){
        if (numero2 == 0) {
            System.out.println("Erro: Não é possivel dividir por zero.");
            return Double.NaN; // Retorna NaN (Not a Number) em caso de divisão por zero
        }
        return numero1 / numero2;
    }
}
