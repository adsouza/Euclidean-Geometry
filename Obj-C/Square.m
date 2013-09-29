#import "Square.h"

@implementation Square

- (float)sideLength
{
	return width;
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
