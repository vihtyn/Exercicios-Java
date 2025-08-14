import java.util.Scanner;

class aluno {
    String CPF;
    String matricula;
    String curso;
    String nome;
}

public class Main {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        aluno[] alunos_cadastrados = new aluno[3];

        int cadastro = 0;
        boolean continuar = true;

        while (cadastro < alunos_cadastrados.length && continuar) {

            alunos_cadastrados[cadastro] = new aluno();

            System.out.println("===================Cadastro Iniciado=====================");

            System.out.println("\nDigite o seu nome:");
            alunos_cadastrados[cadastro].nome = leitor.nextLine();

            System.out.println("\nDigite seu CPF (Apenas numeros):");
            alunos_cadastrados[cadastro].CPF = leitor.nextLine();

            System.out.println("\nDigite seu curso:");
            alunos_cadastrados[cadastro].curso = leitor.nextLine();

            System.out.println("\nDigite sua matricula: ");
            alunos_cadastrados[cadastro].matricula = leitor.nextLine();

            System.out.println("===============Cadastro Concluido=================");

            cadastro++;

            if (cadastro < alunos_cadastrados.length) {
                System.out.println("\nDeseja cadastrar outro aluno? (S/N)");
                String resposta = leitor.nextLine();
                if (resposta.equalsIgnoreCase("N")) {
                    continuar = false;
                }
            } else {
                System.out.println("\nLimite de alunos cadastrados atingido!");
                continuar = false;
            }
        }

        for (int i = 0; i < cadastro; i++) {
            System.out.println("\n===== Aluno " + (i + 1) + " =====");
            System.out.println("Nome: " + alunos_cadastrados[i].nome);
            System.out.println("CPF: " + alunos_cadastrados[i].CPF);
            System.out.println("Curso: " + alunos_cadastrados[i].curso);
            System.out.println("Matricula: " + alunos_cadastrados[i].matricula);
            System.out.println("==============================================");
        }
    }
}
