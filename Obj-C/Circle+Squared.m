#import "Circle+Squared.h"

@implementation Circle (Squared)

- (float)width
{
	return radius * 2;
}

- (float)height
{
	return [self width];
}

@end
