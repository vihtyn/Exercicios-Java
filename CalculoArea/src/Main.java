public class Main {
    public static void main(String[] args) {
        retangulo r = new retangulo("Azul", 7, 10);
        r.calcularArea();

        circulo c = new circulo("Vermelho", 0, 0, 3);
        c.calcularArea();
    }
}