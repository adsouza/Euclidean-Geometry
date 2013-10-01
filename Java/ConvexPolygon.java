public abstract class ConvexPolygon implements Shape {
	public double getPerimeter() {
        if (this instanceof Equilateral) {
            return ((Equilateral)this).getNumSides() * ((Equilateral)this).getSideLength();
        } else {
            throw new UnsupportedOperationException("Cannot compute perimeter.");
        }
    }
}
