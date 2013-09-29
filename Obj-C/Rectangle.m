#import "Rectangle.h"

const int NUM_SIDES = 4;

@implementation Quadrilateral

- (int)numSides
{
	return NUM_SIDES;
}

@end


@implementation Rectangle

- init
{
	return [self initWithSize:1.0];
}

- initWithSize:(float)sideLen
{
	if (self = [super init]) {
		self->width = sideLen;
		self->height = sideLen;
	}
	return self;
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
