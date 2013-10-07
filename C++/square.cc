#include "square.h"

Square::Square() : Rectangle(1, 1) {
}

Square::Square(float size) : Rectangle(size, size) {
}

float Square::getSideLength() const {
    return width_;
}

void Square::setSideLength(float length) {
    width_ = height_ = length;
}

int Square::getNumSides() const {
    return Rectangle::getNumSides();
}
