#import "Shape.h"

@interface Rectangle : Shape {
	float width;
	float height;
}

- init;
- initWithSize:(float)sideLen;
- (void)setWidth:(float)width height:(float)height;

@end
