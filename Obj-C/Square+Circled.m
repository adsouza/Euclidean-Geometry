#import "Square+Circled.h"

@implementation Square (Circled)

- (float)radius
{
	return sqrt(2 * [self sideLength] * [self sideLength])/2.0;
}

@end
