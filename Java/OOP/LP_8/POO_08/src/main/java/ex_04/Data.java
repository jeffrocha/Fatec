/*
4)Crie  uma  classe  em  Java  chamada  Data  que  inclui  três  informações  
como variáveisde instância:• mês (int),• dia (int)• e ano (int).A  classe  deve 
ter  métodos gete setpara  cada  variável  e  um  construtor  que inicializa  
as  variáveis  eassume  que  os  valores  fornecidos  são  corretos.  Forneça 
um  método displayDataque  exibe  o  dia,  omês  e  o  ano  separadospor  
barras normais ( / ).Escreva   um   aplicativo   de   teste   chamado   
DataTesteque   demonstra   as capacidades da classe Data.
 */
package ex_04;

import javax.swing.JOptionPane;

/**
 *
 * @author J&L
 */
public class Data {
    private int varMes;
    private int varDia;
    private int varAno;

    public Data(int mes, int dia, int ano) {
        this.varMes = mes;
        this.varDia = dia;
        this.varAno = ano;
    }

    public int getVarMes() {
        return varMes;
    }

    public void setVarMes(int varMes) {
        this.varMes = varMes;
    }

    public int getVarDia() {
        return varDia;
    }

    public void setVarDia(int varDia) {
        this.varDia = varDia;
    }

    public int getVarAno() {
        return varAno;
    }

    public void setVarAno(int varAno) {
        this.varAno = varAno;
    }

    public void funcImprimirData() {
        JOptionPane.showMessageDialog(null, "Data: " + varDia + "/" + varMes + "/" + varAno);
    }
}
