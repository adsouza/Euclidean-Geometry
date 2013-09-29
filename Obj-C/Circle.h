#import "Shape.h"

@interface Circle : NSObject <Shape> {
	float radius;
}

@property float radius;
@property(readonly) float perimeter;

- init;
- initWithRadius:(float)rad;


@end
