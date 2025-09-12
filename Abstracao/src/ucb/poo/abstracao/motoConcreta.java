package ucb.poo.abstracao;

public class motoConcreta extends Veiculo{
    private int cilindradas;
    private String tipoMotor;
    private boolean Carenagem;
    private boolean temBagageiro;


    public motoConcreta(String marca, String modelo, String cor, int ano_fab, int cilindradas, String tipoMotor, boolean Carenagem){
        super( marca, modelo, cor, ano_fab);
        this.cilindradas = cilindradas;
        this.tipoMotor = tipoMotor;
        this.Carenagem = Carenagem;
    }

    @Override
    public void acelerar(double incremento) {
        double aceleracaoReal = incremento * 0.8;
    }

    @Override
    public void frear(double decremento) {
        double freioReal = decremento;
    }
}
