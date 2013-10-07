#include "square.h"
#include "circle.h"

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

float Square::getPerimeter() const {
    return Equilateral::getPerimeter();
}

int Square::getNumDiagonals() const {
    return Equilateral::getNumDiagonals();
}

void Square::inscribe(Circle& round) {
    setSideLength(round.getRadius() * 2);
}