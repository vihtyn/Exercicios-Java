package ucb.poo.abstracao;

public class VeiculoConcreto extends Veiculo{
    private int numeroPortas;
    private String tipoCambio;
    private boolean arcondicionado;
    private int potencia;

    public VeiculoConcreto(String marca, String modelo, int ano_fab, String cor, int numeroPortas, String tipoCambio, boolean arcondicionado, int potencia){
        super( marca, modelo, cor, ano_fab);
        this.arcondicionado = arcondicionado;
        this.numeroPortas=numeroPortas;
        this.potencia = potencia;
        this.tipoCambio = tipoCambio;
    }

    public VeiculoConcreto(String marca, String modelo, String cor, int ano_fab) {
        super(marca, modelo, cor, ano_fab);
    }

    @Override
    public void acelerar(double incremento) {
        double acelecacaoReal = incremento * 0.8;
    }

    public void frear(double decremento){
        double freioReal = decremento;
    }
}
