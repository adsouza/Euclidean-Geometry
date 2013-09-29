#import "Circle.h"

@implementation Circle

@synthesize radius;

- init
{
	return [self initWithRadius:1.0];
}

- initWithRadius:(float)rad
{
	radius = rad;
	return self;
}

- (float)perimeter
{
	return 2 * M_PI * radius;
}

@end
