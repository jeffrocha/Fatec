/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package poo_07;

/**
 *
 * @author J&L
 */
public class SuperiorTecnico {
    public static class CursoSuperior {
        protected double N1;
        protected double N2;
        protected double N3;

        public CursoSuperior(double N1, double N2, double N3) {
            this.N1 = N1;
            this.N2 = N2;
            this.N3 = N3;
        }

        public double CalculaMedia() {
            return (N1 * 0.35 + N2 * 0.5 + N3 * 0.15);
        }
    }

    public static class Tecnico extends CursoSuperior {
        public Tecnico(double N1, double N2, double N3) {
            super(N1, N2, N3);
        }

        @Override
        public double CalculaMedia() {
            return 5 / (N1 + N2 * 2 + N3 * 2);
        }
    }
}
