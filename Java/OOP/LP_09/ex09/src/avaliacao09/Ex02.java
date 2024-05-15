/*
2) Elabore um frame que simule o teclado de um telefone digital, de acordo 
com a Figura.
                      _______________________
                     |                       | 
                     |   1       2       3   |
                     |   4       5       6   |
                     |   7       8       9   |
                     |   *       0       #   |
                     |   |    JButton    |   |    //"Limpar"    
                     |   |     Label     |   |    //Label dos botões
                     |_______________________|   
A cada tecla pressionada o número é acumulado na caixa de texto.
O botão Limpar apaga todos os números digitados.
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

public class Ex02 extends JFrame {


    private JLabel lblText;
    private StringBuilder indiceAtual;

    public Ex02() {
        setTitle("Teclado de telefone");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 300);
        
        JPanel painelBotoes = new JPanel(new GridLayout(4, 3)); 
            JButton botao1 = novoBotao("1");
            JButton botao2 = novoBotao("2");
            JButton botao3 = novoBotao("3");
            JButton botao4 = novoBotao("4");
            JButton botao5 = novoBotao("5");
            JButton botao6 = novoBotao("6");
            JButton botao7 = novoBotao("7");
            JButton botao8 = novoBotao("8");
            JButton botao9 = novoBotao("9");
            JButton botaoAsterisco = novoBotao("*");
            JButton botaoZero = novoBotao("0");
            JButton botaoHashtag = novoBotao("#");
            painelBotoes.add(botao1);
            painelBotoes.add(botao2);
            painelBotoes.add(botao3);
            painelBotoes.add(botao4);
            painelBotoes.add(botao5);
            painelBotoes.add(botao6);
            painelBotoes.add(botao7);
            painelBotoes.add(botao8);
            painelBotoes.add(botao9);
            painelBotoes.add(botaoAsterisco);
            painelBotoes.add(botaoZero);
            painelBotoes.add(botaoHashtag);

        add(painelBotoes, BorderLayout.CENTER);

        JPanel painelInferior = new JPanel(new BorderLayout());
                        JButton botaoLimpar = new JButton("Limpar");
                        painelInferior.add(botaoLimpar, BorderLayout.NORTH); 
                        lblText = new JLabel(" ");
                        lblText.setHorizontalAlignment(SwingConstants.CENTER); 
                        painelInferior.add(lblText, BorderLayout.CENTER);
        add(painelInferior, BorderLayout.SOUTH);
        setVisible(true);
        indiceAtual = new StringBuilder();

        botaoLimpar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                limparLinha();
            }
        });
    }
    
    private JButton novoBotao(String texto) {
        JButton botao = new JButton(texto);
        botao.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                indiceAtual.append(texto); 
                lblText.setText(indiceAtual.toString()); 
            }
        });
        return botao;
    }
    
    private void limparLinha() {
        indiceAtual.setLength(0); 
        lblText.setText(" "); 
    }
    public static void main(String[] args) {
        new Ex02();
    }
}
