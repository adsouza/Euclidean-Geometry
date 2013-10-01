#import "Square.h"
#import "Equilateral.h"
#import "Circle+Squared.h"

int main (int argc, const char * argv[]) {
	Circle* round = [[Circle alloc] initWithRadius:1.0/(M_PI * 2)];
	ConvexPolygon<Equilateral>* square = [[Square alloc] initWithSize:[round height]];
	NSLog(@"Perimeter of square that inscribes circle with unit circumference is about %f",
				[square perimeter]);
	round = [[Circle alloc] init];
	square = [[Square alloc] initWithSize:[round height]];
	NSLog(@"Perimeter of square that inscribes the unit circle is %.0f.",
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
