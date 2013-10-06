#ifndef Euclidean_Geometry_circle_h
#define Euclidean_Geometry_circle_h

#include "shape.h"

class Circle : Shape {
public:
    explicit Circle(float radius);
    explicit Circle();
    float getCircumference() const;
    float getPerimeter() const;
private:
    double radius_;
};

#endif
