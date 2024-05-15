/*
6)Implemente  a  classe Pessoapossuindo nome,  idade,  altura  e  sexo como 
variáveis de instância. Construa os métodos set e getpara cada variável 
de instância e  um  construtor  para  a  classe  para  inicializar  as 
variáveis  de  instância.  Construa depois  uma  classe Empregadoque  deve
ser  uma  subclasse  da  classe PessoaFatec Zona Sul 
Prof. Ma. Luciana Zapparolli(herança),  adicionandoum  novo  construtor  e 
uma  variável  de  instância salárioe  os métodos set e getpara o novo atributo.
Construa  um  método obterLucrosque  devolva  o  lucro  (salário)  do  
empregado. Escreva umprograma de teste (classe EmpregadoTeste) adequado para 
esta classe testando osmétodos  da  classe  e os  métodos  herdados.  Utilize
para entrada  e  saída de dados a classeJOptionPane.
 */
package ex_06;

import javax.swing.JOptionPane;

/**
 *
 * @author J&L
 */
public class EmpregadoTeste {
    public static void main(String[] args) {
        String nome = JOptionPane.showInputDialog("Digite o nome do empregado:");
        int idade = Integer.parseInt(JOptionPane.showInputDialog("Digite a idade do empregado:"));
        double altura = Double.parseDouble(JOptionPane.showInputDialog("Digite a altura do empregado:"));
        char sexo = JOptionPane.showInputDialog("Digite o sexo do empregado (M/F):").charAt(0);
        double salario = Double.parseDouble(JOptionPane.showInputDialog("Digite o salário do empregado:"));

        Empregado empregado = new Empregado(nome, idade, altura, sexo, salario);

        JOptionPane.showMessageDialog(null, "Nome: " + empregado.getVarNome() + 
                                            "\nIdade: " + empregado.getVarIdade() +
                                            "\nAltura: " + empregado.getVarAltura() +
                                            "\nSexo: " + empregado.getVarSexo() +
                                            "\nSalário: " + empregado.getVarSalario());
        JOptionPane.showMessageDialog(null, "Lucro (Salário): " + empregado.obterLucros());
    }
}