#import <Foundation/Foundation.h>

#import "Square.h"
#import "Equilateral.h"
#import "Circle+Squared.h"

int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Circle *round = [[Circle alloc] initWithRadius:1.0/(M_PI * 2)];
	Shape <Equilateral> *square = [[Square alloc] init];
	[square setSideLength:[round height]];
	NSLog(@"Perimeter of square required to bound circle with unit circumference is about %f",
				[square perimeter]);
	[square release];
	[round release];
	
	NSMutableSet *shapes = [[NSMutableSet set] retain];
	for (int i=1.0; i<27; i++) {
		Shape <Equilateral> *item = [[Square alloc] init];
		[shapes addObject:item];
		[item autorelease];
	}
	for (Shape <Equilateral> *item in shapes) {
		[item perimeter];
	}
	[shapes release];
	
	[pool drain];
	return 0;
}
