package RobozinZS;

import beans.Robo;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class RobozinZS {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Robo robo = new Robo("", "", 0);
        List<String> ListaCad = new ArrayList<>();
        ListaCad.clear();
        int opcao;

        do {
            System.out.println("\nEscolha uma opcao:");
            System.out.println("1. Cadastrar novo robo");
            System.out.println("2. Exibir Lista dos robos");
            System.out.println("3. Limpar Lista");
            System.out.println("4. Sair");
            System.out.print("opcao: ");
            opcao = scanner.nextInt();

            switch (opcao) {
                case 1:
                    System.out.print("Digite o nome:");
                    String nome = scanner.next();
                    System.out.print("Digite a data de fabricacao:");
                    String dtfab = scanner.next();
                    System.out.print("Digite a capacidade da bateria:");
                    int bateria = scanner.nextInt();

                    robo.setNome(nome);
                    robo.setDtfab(dtfab);
                    robo.setBateria(bateria);

                    String dados = nome + " - " + dtfab + " - " + bateria;
                    ListaCad.add(dados);
                    break;

                case 2:
                    if (ListaCad.isEmpty()) {
                        System.out.println("\nNenhum robo cadastrado.\n");
                    } else {
                        System.out.println("\nRobos cadastrados:\n");
                        for (String dado : ListaCad) {
                            System.out.println(dado);
                        }
                    }
                    break;

                case 3:
                    ListaCad.clear();
                    System.out.println("\nDados limpo.\n");
                    break;

                case 4:
                    System.out.println("\nSaindo...\n");
                    break;

                default:
                    System.out.println("\nOpção invalida!\n");
            }
        } while (opcao != 4);

        scanner.close();
    }
}
