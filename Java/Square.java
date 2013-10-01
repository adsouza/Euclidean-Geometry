public class Square extends Rectangle implements Equilateral {
    public Square() {
        this(1.0);
    }
    public Square(double sideLength) {
        super(sideLength, sideLength);
    }
    public double getSideLength() {
        assert width == height;
        return width;
    }

    public static void main(String[] args) {
        Square sq = new Square();
        System.out.println("The perimeter of a unit square is " + sq.getPerimeter());
    }
}
