#import "ConvexPolygon.h"

@interface Circle : ConvexPolygon {
	float radius;
}

@property float radius;

- init;
- initWithRadius:(float)rad;

@end
