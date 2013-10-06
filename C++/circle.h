#ifndef Euclidean_Geometry_circle_h
#define Euclidean_Geometry_circle_h

class Circle : Shape {
public:
    explicit Circle(float radius) {
        this.radius_ = radius;
    }
private:
    double radius_;
};

#endif
