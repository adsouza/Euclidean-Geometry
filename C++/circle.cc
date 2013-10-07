#include "circle.h"
#include "rectangle.h"

#include <math.h>

Circle::Circle(float radius)
    : radius_(radius) {
}

Circle::Circle()
    : radius_(1.0) {
}

float Circle::getCircumference() const {
    return 2 * M_PI * radius_;
}

float Circle::getPerimeter() const {
    return getCircumference();
}

float Circle::getRadius() const {
    return radius_;
}

void Circle::circumscribe(Rectangle& box) {
    radius_ = hypotf(box.getWidth(), box.getHeight()) / 2;
}
