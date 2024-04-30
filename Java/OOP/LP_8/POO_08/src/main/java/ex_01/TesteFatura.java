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
import javax.swing.JOptionPane;

/**
 *
 * @author J&L
 */
public class TesteFatura {
    public static void main(String[] args) {

        String numeroItem = JOptionPane.showInputDialog("Digite o número do item:");
        String descricaoItem = JOptionPane.showInputDialog("Digite a descrição do item:");
        String quantidadeStr = JOptionPane.showInputDialog("Digite a quantidade comprada:");
        int quantidadeComprada = Integer.parseInt(quantidadeStr);
        String precoStr = JOptionPane.showInputDialog("Digite o preço unitário:");
      
        precoStr = precoStr.replace(",", ".");
        double precoUnitario = Double.parseDouble(precoStr);

        Fatura fatura = new Fatura(numeroItem, descricaoItem, quantidadeComprada, precoUnitario);
        String mensagem = "Número do item: " + fatura.getVarNumItem() + "\n" +
                          "Descrição do item: " + fatura.getVarDescItem() + "\n" +
                          "Quantidade comprada: " + fatura.getVarQtdCompra() + "\n" +
                          "Preço unitário: " + fatura.getVarPrecoUni() + "\n" +
                          "Valor total da fatura: " + fatura.getFaturarTotal();
        JOptionPane.showMessageDialog(null, mensagem);
    }
}


