public abstract class ConvexPolygon implements Shape {
    public abstract int getNumSides();
	public double getPerimeter() {
        if (this instanceof Equilateral) {
            return ((Equilateral)this).getNumSides() * ((Equilateral)this).getSideLength();
        } else {
            throw new UnsupportedOperationException("Cannot compute perimeter.");
        }
    }
    public int getNumDiagonals() {
        return getNumSides() * (getNumSides() - 3) / 2;
    }
}
