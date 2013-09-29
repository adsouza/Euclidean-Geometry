#import "Rectangle.h"

@implementation Rectangle

- init
{
	return [self initWithSize:1.0 outlineColor:[NSColor lightGrayColor] fillColor:[NSColor lightGrayColor]];
}

- initWithSize:(float)sideLen outlineColor:(NSColor *)outline fillColor:(NSColor *)fill
{
	if (self = [super initWithColor:outline fill:fill]) {
		width = sideLen;
		height = sideLen;
	}
	return self;
}

- initWithColor:(NSColor *)outline fill:(NSColor *)fill
{
	return [self initWithSize:1.0 outlineColor:outline fillColor:fill];
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
