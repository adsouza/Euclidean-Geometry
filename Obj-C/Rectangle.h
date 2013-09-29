#import "Shape.h"

@interface Rectangle : ConvexPolygon {
	float width;
	float height;
}

- init;
- initWithSize:(float)sideLen;
- (void)setWidth:(float)width height:(float)height;

@end
