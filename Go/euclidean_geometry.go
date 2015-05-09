package main

import (
	"fmt"
	"math"
)

type Shape interface {
	Perimeter() float64
}

type Circle struct {
	radius float64
}

func (c Circle) Circumference() float64 {
	return 2 * math.Pi * c.radius
}

func (c Circle) Perimeter() float64 {
	return c.Circumference()
}

type ConvexPolygon interface {
	NumSides() int
}

func NumDiagonals(poly ConvexPolygon) int {
	return poly.NumSides() * (poly.NumSides() - 3) / 2
}

const Quad = 4

type Quadrilateral interface {
	Width() float64
	Height() float64
}

type Rectangle struct {
	width, height float64
}

func (Rectangle) NumSides() int {
	return Quad
}

func (r Rectangle) Width() float64 {
	return r.width
}

func (r Rectangle) Height() float64 {
	return r.height
}

func (r Rectangle) Perimeter() float64 {
	return (r.width + r.height) * 2
}

type Equilateral interface {
	NumSides() int
	SideLength() float64
}

func Perimeter(this Equilateral) float64 {
	return this.SideLength() * float64(this.NumSides())
}

type Square struct {
	sideLength float64
}

func (sq Square) SideLength() float64 {
	return sq.sideLength
}

func (sq Square) NumSides() int {
	return Quad
}

func (sq Square) Width() float64 {
	return sq.SideLength()
}

func (sq Square) Height() float64 {
	return sq.SideLength()
}

func (sq Square) Perimeter() float64 {
	return Perimeter(sq)
}

// Create a new square whose sides are exactly twice the length of this circle's radius.
func (c Circle) Inscribe() Square {
	return Square{sideLength: c.radius * 2}
}

// Modify the radius of this circle to be half the length of the quadrilateral's diagonal.
// We do this because it's not possible for an interface to recieve a function call.
func (c *Circle) Circumscribe(q Quadrilateral) {
	c.radius = math.Hypot(q.Width(), q.Height()) / 2
}

func main() {
	round := Circle{radius: 1}
	fmt.Println("The perimeter of a circle with unit radius is", round.Perimeter())
	rect := Rectangle{16, 9}
	fmt.Println("The perimeter of a 16x9 rectangle is", rect.Perimeter())
	box := Square{sideLength: 1}
	fmt.Println("The perimeter of a unit square is", box.Perimeter())
	fmt.Println("A square has", NumDiagonals(box), "diagonals.")
	fmt.Println("The square that inscribes the unit circle has a perimeter of ",
		round.Inscribe().Perimeter())
	round.Circumscribe(box)
	fmt.Println("The circle that circumscribes the unit square has a circumference of ",
		round.Circumference())
	round.Circumscribe(rect)
	fmt.Println("The circle that circumscribes a 16x9 rectangle has a circumference of ",
		round.Circumference())
}
