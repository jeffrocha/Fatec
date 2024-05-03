/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import dm20241m.util.ConexaoDb;

/**
 *
 * @author lab04aluno
 */
public class TesteConexao {
    
    public static void main (String[] args) {
       ConexaoDb.getConexaoMySQL();
       System.out.println(ConexaoDb.statusConection());
    }
    
}
