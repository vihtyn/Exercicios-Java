public class Carro {
    private String modelo;
    private String cor;
    private int ano;

    /*
    Método construtor
     */

    public Carro(String p_modelo, String p_cor, int p_ano){

        this.ano = p_ano;
        this.cor = p_cor;
        this.modelo = p_modelo;

    }

    public void mostraCarro(){
        System.out.println("O carro é um: " + modelo + " da cor: " + cor + " do ano: " + ano);
    }

    public void qProprietario(Pessoa p){
        System.out.println("O dono do carro: " + modelo + " é a pessoa: " + p.getNome());
    }
}
