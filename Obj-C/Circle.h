#import "Shape.h"

// http://en.wikipedia.org/wiki/Circle-ellipse_problem
@interface Circle : NSObject <Shape> {
	float radius;
}

@property float radius;
@property(readonly) float circumference;

- init;
- initWithRadius:(float)radius;

@end
