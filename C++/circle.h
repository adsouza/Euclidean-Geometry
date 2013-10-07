#ifndef __Euclidean_Geometry__circle__
#define __Euclidean_Geometry__circle__

#include "shape.h"

class Circle : Shape {
public:
    explicit Circle(float radius);
    explicit Circle();
    float getCircumference() const;
    float getPerimeter() const;
    float getRadius() const;
private:
    float radius_;
};

#endif
