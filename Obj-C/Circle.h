#import "Shape.h"

// http://en.wikipedia.org/wiki/Circle-ellipse_problem
@interface Circle : NSObject <Shape> {
	float radius;
}

@property float radius;

- init;
- initWithRadius:(float)radius;

@end
