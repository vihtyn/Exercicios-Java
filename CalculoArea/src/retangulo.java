public class retangulo extends Forma{
    private double area;

    public retangulo(String cor, double x, double y){
        super ( cor, x, y);
        this.area = area;
    }

    @Override
    public void calcularArea() {
        double area = x * y;

        System.out.println("A area do retangulo é: " + area);
    }

    public double getArea() {
        return area;
    }
}
