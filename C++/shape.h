#ifndef __Euclidean_Geometry__shape__
#define __Euclidean_Geometry__shape__

class Shape {
  public:
    virtual float getPerimeter() const = 0;
};

class ConvexPolygon : Shape {
  public:
    virtual int getNumSides() const = 0;
    virtual int getNumDiagonals() const;
};

class Equilateral : ConvexPolygon {
  public:
    virtual float getPerimeter() const;
    virtual float getSideLength() const = 0;
    virtual void setSideLength(float length) = 0;
};

#endif