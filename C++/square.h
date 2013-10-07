#ifndef __Euclidean_Geometry__square__
#define __Euclidean_Geometry__square__

#include "shape.h"
#include "rectangle.h"

class Square : Rectangle, Equilateral  {
public:
    explicit Square();
    explicit Square(float size);
    float getSideLength() const;
    void setSideLength(float length);
    int getNumSides() const;
    float getPerimeter() const;
    int getNumDiagonals() const;
};

#endif
