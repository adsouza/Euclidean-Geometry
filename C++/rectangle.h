#ifndef __Euclidean_Geometry__rectangle__
#define __Euclidean_Geometry__rectangle__

#include "shape.h"

class Rectangle : ConvexPolygon {
public:
    explicit Rectangle(float width, float height);
    int getNumSides() const;
    float getPerimeter() const;
protected:
    float width_;
    float height_;
};

#endif
