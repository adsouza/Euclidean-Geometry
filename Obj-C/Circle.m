#import "Circle.h"

@implementation Circle

@synthesize radius;

- init
{
	return [self initWithRadius:1.0];
}

- initWithRadius:(float)rad
{
	self->radius = rad;
	return self;
}

- (float)circumference
{
	return 2 * M_PI * radius;
}

-(float)perimeter
{
	return [self circumference];
}

@end
