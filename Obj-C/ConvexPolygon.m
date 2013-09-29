#import "Shape.h"
#import "Equilateral.h"

@implementation ConvexPolygon

- (float)perimeter
{
	if ([self conformsToProtocol:@protocol(Equilateral)]) {
		NSObject<Equilateral> *receiver = (NSObject<Equilateral> *)self;
		return [receiver sideLength] * [receiver numSides];
	}
	NSException *exception = [NSException
		exceptionWithName:@"Unimplemented functionality"
		reason:@"No shape-specific method for computing perimeter of irregular polygon."
		userInfo:nil];
	@throw exception;
}

@end
