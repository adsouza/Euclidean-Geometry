#import "Shape.h"

@interface Rectangle : Shape {
	float width;
	float height;
}

- init;
- initWithSize:(float)sideLen outlineColor:(NSColor *)outlineColor fillColor:(NSColor *)fillColor;
- initWithColor:(NSColor *)outline fill:(NSColor *)fill;
- (void) display;
- (void)setWidth:(float)width height:(float)height;

@end
