#import "Shape.h"

@interface Circle : NSObject <Shape> {
	float radius;
}

@property float radius;

- init;
- initWithRadius:(float)rad;


@end
