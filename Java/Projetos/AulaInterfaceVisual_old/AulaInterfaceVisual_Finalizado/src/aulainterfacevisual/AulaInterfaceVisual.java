/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package aulainterfacevisual;

import conexao.Conexao;
import forms.FormPrincipal;

/**
 *
 * @author J&L
 */
public class AulaInterfaceVisual {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Conexao c = new Conexao();
        c.getConexao();
        FormPrincipal formPrincipal = new FormPrincipal();
        formPrincipal.setVisible(true);
    }
    
}
