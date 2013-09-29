#import "Shape.h"
#import "Equilateral.h"

@implementation Shape

- init
{
	return [self initWithColor:[NSColor lightGrayColor] fill:[NSColor lightGrayColor]];
}

- initWithColor:(NSColor *)outline fill:(NSColor *)fill
{
	if (outline == nil) {
		return nil;
	}
	if (self = [super init]) {
		self.outlineColor = outlineColor;
		if (fill != nil) {
			self.fillColor = fill;
		} else {
			self.fillColor = nil;
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

- (BOOL)isFilled
{
	return fillColor != nil && fillColor.alphaComponent > 0;
}

@synthesize outlineColor;
@synthesize fillColor;

@end
