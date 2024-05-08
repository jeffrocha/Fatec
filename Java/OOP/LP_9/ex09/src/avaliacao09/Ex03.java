/*
Criar um frame contendo uma caixa de texto onde o usuário digita um 
valor numérico qualquer referente à venda. 
Calcular o ICMS, que corresponde a 18% do valor da venda e o 
IPI, correspondente a 5%. Em outra caixa exibir o 
Valor Total, que é a soma de todos os valores, isto é, 
Valor da Venda + ICMS + IPI.
  
 */
package avaliacao09;

/**
 *
 * @author J&L
 */
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Ex03 extends JFrame  {
    
    
    public static void main(String[] args) {

        JFrame frame = new JFrame("Calculadora Imposto");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(400, 200);
        

        JPanel panel = new JPanel(new GridLayout(5, 2));


        JLabel lblValorVenda = new JLabel("Valor de venda:");
        JTextField txfValorVenda = new JTextField();
        JLabel lblICMS = new JLabel("ICMS (18%):");
        JTextField txfICMS = new JTextField();
        txfICMS.setEditable(false); 
        JLabel lblIPI = new JLabel("IPI (5%):");
        JTextField txfIPI = new JTextField();
        txfIPI.setEditable(false); 
        JLabel lblValorTotal = new JLabel("Valor Total:");
        JTextField txfValorTotal = new JTextField();
        txfValorTotal.setEditable(false);
        JButton btnCalcular = new JButton("Calcular");
        JButton btnLimpar = new JButton("Limpar");


        panel.add(lblValorVenda);
        panel.add(txfValorVenda);
        panel.add(lblICMS);
        panel.add(txfICMS);
        panel.add(lblIPI);
        panel.add(txfIPI);
        panel.add(lblValorTotal);
        panel.add(txfValorTotal);
        panel.add(btnCalcular);
        panel.add(btnLimpar);

        frame.add(panel);
        frame.setVisible(true);
        

        btnCalcular.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
        double valorVenda = Double.parseDouble(txfValorVenda.getText());
        double icms = valorVenda * 0.18;
        double ipi = valorVenda * 0.05;
        double valorTotal = valorVenda + icms + ipi;
        
        txfICMS.setText(String.valueOf(icms));
        txfIPI.setText(String.valueOf(ipi));
        txfValorTotal.setText(String.valueOf(valorTotal));
    }
});
      
        btnLimpar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
            txfValorVenda.setText("");
            txfICMS.setText("");
            txfIPI.setText("");
            txfValorTotal.setText("");
            }
        });
    }
}
