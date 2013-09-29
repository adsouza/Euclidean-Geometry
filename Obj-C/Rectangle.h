#import "Shape.h"

@interface Rectangle : Shape {
	float width;
	float height;
}

- init;
- initWithSize:(float)sideLen primaryColor:(NSColor *)primaryColor fillColor:(NSColor *)fillColor;
- initWithColor:(NSColor *)primary fill:(NSColor *)fill;
- (void) display;
- (void)setWidth:(float)width height:(float)height;

@end
