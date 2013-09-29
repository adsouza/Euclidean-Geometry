#import "Square.h"

@implementation Square

- (float)sideLength
{
	return width;
}

- (int)numSides
{
	return 4;
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
