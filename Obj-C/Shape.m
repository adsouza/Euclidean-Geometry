#import "Shape.h"
#import "Equilateral.h"

@implementation Shape

- init
{
	return [self initWithColor:[NSColor lightGrayColor] fill:[NSColor lightGrayColor]];
}

- initWithColor:(NSColor *)primary fill:(NSColor *)fill
{
	if (primary == nil) {
		return nil;
	}
	if (self = [super init]) {
		primaryColor = primaryColor;
		if (fill != nil) {
			filled = TRUE;
			fillColor = fill;
		} else {
			filled = FALSE;
			fillColor = nil;
		}
	}
	return self;
}

- initFilled:(NSColor *)color
{
	if (color == nil) {
		color = [NSColor lightGrayColor];
	}
	return [self initWithColor:color fill:color];
}

- (float)perimeter
{
	if ([self conformsToProtocol:@protocol(Equilateral)]) {
		NSObject<Equilateral> *receiver = (NSObject<Equilateral> *)self;
		return [receiver sideLength] * [receiver numSides];
	}
	NSException *exception = [NSException
		exceptionWithName:@"Unimplemented functionality"
		reason:@"No shape-specific method for computing perimeter of irregular shape."
		userInfo:nil];
	@throw exception;
}

@synthesize primaryColor;
@synthesize filled;
@synthesize fillColor;

@end
