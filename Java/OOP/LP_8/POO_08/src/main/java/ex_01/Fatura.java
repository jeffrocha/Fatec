/*
1)Crie  uma  classe  chamada Faturarque  possa  ser  utilizado  por  uma  loja 
de suprimentos  de  informática  para  representar  uma  fatura  de  um  item 
vendido  na loja. Uma fatura deve incluir as seguintes informações como 
atributos: • o número do item faturado,• a descrição do item,• a quantidade 
comprada do item e • o preço unitário do item. Sua  classe  deve  ter  um  
construtor  que  inicialize  os  quatro  atributos.  Se  a quantidade não for 
positiva, ela deve ser configurada como 0. Se o preço por item não for
positivoeledeve ser configurado como 0.Forneça  um  método sete  um  método 
getpara  cada  variável  de  instância.  Além disso, forneça  um  método  
chamado  getFaturarTotalque  calcula o  valor  da fatura (isso é, multiplica 
a quantidade pelo preço por item) e depois retorna o valor como um double. 
Escreva um aplicativo de teste que demonstra as capacidades da classe Faturar.
 */
package ex_01;

/**
 *
 * @author J&L
 */

public class Fatura {
    private String VarNumItem;
    private String VarDescItem;
    private int VarQtdCompra;
    private double VarPrecoUni;

    public Fatura(String numeroItem, String descricaoItem, int quantidadeComprada, double precoUnitario) {
        this.VarNumItem = numeroItem;
        this.VarDescItem = descricaoItem;
        if (quantidadeComprada > 0)
            this.VarQtdCompra = quantidadeComprada;
        else
            this.VarQtdCompra = 0;
        
        if (precoUnitario > 0)
            this.VarPrecoUni = precoUnitario;
        else
            this.VarPrecoUni = 0;
    }

    public String getVarNumItem() {
        return VarNumItem;
    }

    public void setVarNumItem(String VarNumItem) {
        this.VarNumItem = VarNumItem;
    }

    public String getVarDescItem() {
        return VarDescItem;
    }

    public void setVarDescItem(String VarDescItem) {
        this.VarDescItem = VarDescItem;
    }

    public int getVarQtdCompra() {
        return VarQtdCompra;
    }

    public void setVarQtdCompra(int VarQtdCompra) {
        if (VarQtdCompra > 0)
            this.VarQtdCompra = VarQtdCompra;
        else
            this.VarQtdCompra = 0;
    }

    public double getVarPrecoUni() {
        return VarPrecoUni;
    }

    public void setVarPrecoUni(double VarPrecoUni) {
        if (VarPrecoUni > 0)
            this.VarPrecoUni = VarPrecoUni;
        else
            this.VarPrecoUni = 0;
    }

    public double getFaturarTotal() {
        return VarQtdCompra * VarPrecoUni;
    }
}
