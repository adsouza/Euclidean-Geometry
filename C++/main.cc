#include <iostream>

#include "circle.h"
#include "square.h"

int main(int argc, const char * argv[])
{
    Circle round;
    Rectangle box(16, 9);
    Square sq;
    std::cout << "The circumference of the unit circle is " << round.getCircumference() << ".\n";
    std::cout << "The perimeter of a 16x9 rectangle is " << box.getPerimeter() << ".\n";
    std::cout << "The perimeter of the unit square is " << sq.getPerimeter() << ".\n";
    std::cout << "A square has " << sq.getNumDiagonals() << " diagonals.";
    return 0;
}
