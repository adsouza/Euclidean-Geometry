public class Rectangle extends ConvexPolygon {
    static final int NUM_SIDES = 4;

    protected double width;
    protected double height;

    public Rectangle(double width, double height) {
        this.width = width;
        this.height = height;
    }
    public int getNumSides() {
        return NUM_SIDES;
    }
}
