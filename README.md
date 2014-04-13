Euclidean Geometry
==================

The discovery of [Rosetta Code](http://rosettacode.org/wiki/Rosetta_Code) made me abandon this.

This project is a set of didactic source code samples in different programming languages that uses concepts from
Euclidean plane geometry to illustrate language features.
The idea behind the project is to help anybody with an understanding of basic geometry pick up the core features of
a new language easily.
It aims to follow in the spirit of the [Rosetta stone](http://en.wikipedia.org/wiki/Rosetta_Stone) and
[ToDoMVC](http://todomvc.com/).

We begin with the concept of geometric shapes, which should know the length of their own perimeter.
This is easy for circles (provided their radius is known) and equilaterals. [It's not hard for rectangles either.]
Squares are equilateral rectangles so it's trivial to compute their perimeters!

Similarly, we can compute the number of diagonals for all polygons if we know how many sides they have.

Computing the perimeter of the square that inscribes a circle is slightly more involved.
We can use the radius to compute the length of the square's dimensions and then use those to compute its perimeter.
Using Pythagorean theorem we can also compute the circumference of the circle that circumscribes a rectangle.
