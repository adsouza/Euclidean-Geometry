#include "rectangle.h"

static const int NUM_SIDES = 4;

Rectangle::Rectangle(float width, float height)
    : width_(width), height_(height) {
}

int Rectangle::getNumSides() const {
    return NUM_SIDES;
}

float Rectangle::getPerimeter() const {
    return 2 * (width_ + height_);
}