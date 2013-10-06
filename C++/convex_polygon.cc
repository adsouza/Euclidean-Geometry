#include "shape.h"

int ConvexPolygon::getNumDiagonals() const {
    return getNumSides() * (getNumSides() - 3) / 2;
}

float Equilateral::getPerimeter() const {
    return getSideLength() * getNumSides();
}
