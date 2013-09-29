#import "Square.h"

const int NUM_SIDES = 4;

@implementation Square

- (float)sideLength
{
	return width;
}

- (int)numSides
{
	return NUM_SIDES;
}

- (void)setSideLength:(float)length
{
	[super setWidth:length height:length];
}

- (void)setWidth:(float)newWidth height:(float)newHeight
{
	if (newWidth == newHeight) {
		[super setWidth:newWidth height:newHeight];
	}
}

@end
