Shapes
======

Shapes is a set of didactic source code samples in different programming languages that uses simple 2D geometric
concepts to illustrate language features. The idea behind the project is to help anybody with an understanding of
basic 2D geometry pick up the core features of a new language easily. It aims to follow in the spirit of the Rosetta
stone and ToDoMVC.

We begin with the concept of a convex polygon, which we will affectionately a shape. Shapes have a colour for their outline and may be filled with a different
colour. Shapes should also know the length of their own perimeter. This is easy for circles (provided their radius is
know) and equlateral shapes. It's not hard for rectangles either. Squares are equilateral rectangles so it's trivial
to compute their perimeters!

Computing the perimeter of the square that inscribes a circle is slightly more involved. We can use the radius to compute the length of the square's dimensions and then use those to compute its perimeter.
