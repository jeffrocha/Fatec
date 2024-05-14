/*
1) No  exemplo   dadoem  sala  de  aula,  acrescentar  botões para;  
    Entrada
        TextField 1 
        TextField 2
    Processamento 
        Realozar operação dos TexFiel;
        - subtrair,   
        - dividir 
        - multiplicar
    Saída
        - exibindo o resultado.
 */
    
package avaliacao09;

/**
 *
 * @author J&L
 */

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class Ex01 extends JFrame {
   
        private JFrame janela;
        private JPanel painelPrincipal, painelEntrada, painelBOTOES;
        private Label label1,lblv1, lblv2,lblr,lblt;
        private TextField t1,t2;
        private JButton botaoSoma, botaoSair, botaoSub, botaoMultiplicar;
    
    public static void main(String[] args) {
      new Ex01().montaTela();    

 

    }        
    private void montaTela() {
    preparaJanela();
    definirEventos();
   }

    private void preparaJanela() {
    janela = new JFrame("Exemplo - combinação de painéis");
    janela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    
    setLayout(new BorderLayout()); 
     
    painelEntrada = new JPanel();
    painelEntrada.setLayout(new BoxLayout(painelEntrada,BoxLayout.PAGE_AXIS));
    janela.add(painelEntrada,BorderLayout.NORTH);
      
        
    painelPrincipal = new JPanel();
    painelPrincipal.setLayout(new GridLayout(3,2));
    janela.add(painelPrincipal,BorderLayout.CENTER);
      
    painelBOTOES = new JPanel(new FlowLayout());  
    janela.add(painelBOTOES,BorderLayout.SOUTH);
      
    label1 = new Label("Calculando a Soma de 2 números",Label.CENTER); 
   
    painelEntrada.add(label1);
      
      lblv1 = new Label("Valor 1: ");
      lblv2 = new Label("Valor 2: ");
      t1 = new TextField(""); 
      t2= new TextField("");
      
      lblr = new Label("Resultado=");
      lblt= new Label(" ");
      painelPrincipal.add(lblv1);
      painelPrincipal.add(t1);
      painelPrincipal.add(lblv2);
      painelPrincipal.add(t2);
      painelPrincipal.add(lblr);
      painelPrincipal.add(lblt);
      
      botaoSoma = new JButton("SOMA");
      painelBOTOES.add(botaoSoma);
      
      botaoSub = new JButton("SUBTRAI");
      painelBOTOES.add(botaoSub);
      
      botaoMultiplicar = new JButton("Multiplicar");
      painelBOTOES.add(botaoMultiplicar);
      
      botaoSair = new JButton("SAIR");
      painelBOTOES.add(botaoSair);
      
      janela.pack();
      janela.setSize(600, 200);
      janela.setVisible(true);
  }

private void definirEventos() {
 
botaoSoma.addActionListener(new ActionListener(){
public void actionPerformed(ActionEvent e) {
        int soma=Integer.parseInt(t1.getText())+ Integer.parseInt(t2.getText());
        String r = Integer.toString(soma);      
        lblt.setText(r);
        }
});
 
botaoSair.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
      System.exit(0);
      }
});

botaoSub.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
        int subt=Integer.parseInt(t1.getText())- Integer.parseInt(t2.getText());
        String r = Integer.toString(subt);      
        lblt.setText(r);
       }
});

botaoMultiplicar.addActionListener(new ActionListener() {
public void actionPerformed(ActionEvent e) {
        int mult=Integer.parseInt(t1.getText())* Integer.parseInt(t2.getText());
        String r = Integer.toString(mult);      
        lblt.setText(r);
       }
});
}
}

 
