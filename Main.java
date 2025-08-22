//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Pessoa p1 = new Pessoa("Victor Caldas", 19, "74350908187");
        Pessoa p2 = new Pessoa("Renan Ferrari", 19, "02656789045");
        Pessoa p3 = new Pessoa("Vitor Augusto", 20, "90812347678");

        p1.seApresenta();
        p2.seApresenta();
        p3.seApresenta();

        Carro c1 = new Carro("Etios", "prata", 2013);
        Carro c2 = new Carro("Onix", "Branco", 2015);

        c1.mostraCarro();
        c2.mostraCarro();

        c1.qProprietario(p1);
        c2.qProprietario(p2);

    }
}