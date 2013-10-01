#import "Square.h"

@implementation Square

- (float)sideLength
{
	return width;
}

- (void)setWidth:(float)newWidth height:(float)newHeight
{
	if (newWidth == newHeight) {
		[super setWidth:newWidth height:newHeight];
		return;
	}
	NSException *exception = [NSException
														exceptionWithName:@"Invalid dimensions"
														reason:@"Squares must have identical width and height."
														userInfo:nil];
	@throw exception;
}

@end
