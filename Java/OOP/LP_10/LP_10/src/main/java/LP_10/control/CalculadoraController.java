/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package LP_10.control;

import LP_10.Enum.EnumOperacao;

/**
 *
 * @author J&L
 */
public class CalculadoraController {
    
    private Double total;
    
    public CalculadoraController(){
        total = 0.0;
    }
    
    public Double realizarOperacao(EnumOperacao operacao, Double valor){
        if (operacao.equals(EnumOperacao.SOMA)){
             if (total != 0){
                 total += valor;
             }else
             {
                 total= valor;
             }
    }else if (operacao.equals(EnumOperacao.SUBTRACAO)){
             if (total != 0){
                 total -= valor;
             }else
             {
                 total= valor;
             }
    }else if (operacao.equals(EnumOperacao.DIVISAO)){
             if (total != 0){
                 total /= valor;
             }else
             {
                 total= valor;
             }
    }else if (operacao.equals(EnumOperacao.MULTIPLICACAO)){
             if (total != 0){
                 total *= valor;
             }else
             {
                 total= valor;
             }
    }return total;}
   
public Double getTotal(){
    return this.total;}

public void zerar(){
    total = 0.0;}
}
