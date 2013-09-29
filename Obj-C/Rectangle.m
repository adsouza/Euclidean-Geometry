#import "Rectangle.h"

@implementation Rectangle

- init
{
	return [self initWithSize:1.0 primaryColor:[NSColor lightGrayColor] fillColor:[NSColor lightGrayColor]];
}

- initWithSize:(float)sideLen primaryColor:(NSColor *)primary fillColor:(NSColor *)fill
{
	if (self = [super initWithColor:primary fill:fill]) {
		width = sideLen;
		height = sideLen;
	}
	return self;
}

- initWithColor:(NSColor *)primary fill:(NSColor *)fill
{
	return [self initWithSize:1.0 primaryColor:primary fillColor:fill];
}

- (void) display
{
}

- (void)setWidth:(float)newWidth height:(float)newHeight
{
	self->width = newWidth;
	self->height = newHeight;
}

- (float)perimeter
{
	return (width + height) * 2;
}

@end
