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

type Rectangle struct {
	width, height float64
}

func (rect Rectangle) NumSides() int {
	return Quad
}

func (rect Rectangle) Perimeter() float64 {
	return (rect.width + rect.height) * 2
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

func (sq Square) Perimeter() float64 {
	return Perimeter(sq)
}

func main() {
	round := Circle{radius: 1}
	fmt.Println("The perimeter of a circle with unit radius is", round.Perimeter())
    rect := Rectangle{16, 9}
	fmt.Println("The perimeter of a 16x9 rectangle is", rect.Perimeter())
	box := Square{sideLength: 1}
	fmt.Println("The perimeter of a unit square is", box.Perimeter())
    fmt.Println("A square has", NumDiagonals(box), "diagonals.")
}
