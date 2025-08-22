public class Pessoa {
    private String nome;
    private int idade;
    private String cpf;
    private double altura;

        /*
        Método construtor
         */

        public Pessoa(String p_nome, int p_idade, String p_cpf){
            this.nome = p_nome;
            this.cpf = p_cpf;
            this.idade = p_idade;
        }

    public void seApresenta(){
        System.out.println("Meu nome é: "+ nome + " minha idade é: "+ idade + " Meu cpf é: " + cpf);
    }

    public String getNome(){
            return nome;
    }
}
