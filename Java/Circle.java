public class Circle implements Shape {
    private double radius;

    public Circle() {
        this(1.0);
    }
    public Circle(double radius) {
        this.radius = radius;
    }
    public double getPerimeter() {
        return getCircumference();
    }
    public double getCircumference() {
        return 2 * Math.PI * radius;
    }
    public Square inscribe() {
        return new Square(radius * 2);
    }

    public static void main(String[] args) {
        Circle me = new Circle();
        System.out.println("The square that inscribes the unit circle has a perimeter of " +
                           me.inscribe().getPerimeter());
        me = new Circle(1/(Math.PI * 2));
        System.out.println("The square that inscribes a circle with circumference of 1 has a perimeter of " +
                           me.inscribe().getPerimeter());
    }
}
