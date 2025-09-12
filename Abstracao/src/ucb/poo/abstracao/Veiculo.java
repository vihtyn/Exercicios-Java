package ucb.poo.abstracao;

public abstract class Veiculo{
    public Veiculo(String marca, String modelo, String cor, int ano_fab){
        this.marca = marca;
        this.modelo = modelo;
        this.cor = cor;
        this.ano_fab = ano_fab;
    }

    protected String marca;
    protected String modelo;
    protected String cor;

    protected int ano_fab;

    public void exibir_info(){
        System.out.println("===== Informações do Veículo======");
        System.out.println("Marca: " + marca);
        System.out.println("Modelo: "+ modelo);
        System.out.println("Cor: " + cor);
        System.out.println("Ano de fabricação: " + ano_fab);
    }

    public abstract void acelerar (double incremento);

    public abstract void frear(double decremento);
}