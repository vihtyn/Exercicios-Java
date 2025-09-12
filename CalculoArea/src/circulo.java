import javax.lang.model.element.NestingKind;

public class circulo extends Forma{
    private double raio;

    private double area;

    public circulo(String cor, double x, double y, double raio){
        super(cor, x ,y);
        this.raio = raio;
        this.area = area;
    }

    @Override
    public void calcularArea() {
        double area = 3.142 * (raio * raio);
        System.out.println("A área do circulo é: " + area);
    }

    public double getArea() {
        return area;
    }
}
