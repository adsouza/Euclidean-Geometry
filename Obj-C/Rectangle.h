#import "Shape.h"

// See http://en.wikipedia.org/wiki/File:Quadrilateral_hierarchy.png
@interface Quadrilateral : ConvexPolygon {
}

@end

@interface Rectangle : Quadrilateral {
	float width;
	float height;
}

- init;
- initWithSize:(float)sideLen;
- (void)setWidth:(float)width height:(float)height;

@end
