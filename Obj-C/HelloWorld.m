#import "Square.h"
#import "Equilateral.h"
#import "Circle+Squared.h"

int main (int argc, const char * argv[]) {
	Circle *round = [[Circle alloc] initWithRadius:1.0/(M_PI * 2)];
	ConvexPolygon <Equilateral> *square = [[Square alloc] init];
	[square setSideLength:[round height]];
	NSLog(@"Perimeter of square required to bound circle with unit circumference is about %f",
				[square perimeter]);
	
	NSMutableSet *shapes = [NSMutableSet set];
	for (int i=1.0; i<3; i++) {
		ConvexPolygon <Equilateral> *item = [[Square alloc] init];
		[shapes addObject:item];
	}
	for (ConvexPolygon <Equilateral> *item in shapes) {
		[item numDiagonals];
		[item perimeter];
	}
	
	return 0;
}
