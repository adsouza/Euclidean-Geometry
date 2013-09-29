#import "Shape.h"

@interface Circle : Shape {
	float radius;
}

@property float radius;

- init;
- initWithRadius:(float)rad;

@end
