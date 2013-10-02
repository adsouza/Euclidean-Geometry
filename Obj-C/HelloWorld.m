#import "Square+Circled.h"
#import "Equilateral.h"
#import "Circle+Squared.h"

int main (int argc, const char * argv[]) {
	Circle* round = [[Circle alloc] initWithRadius:1.0/(M_PI * 2)];
	ConvexPolygon<Equilateral>* inscriber = [[Square alloc] initWithSize:[round sideLength]];
	NSLog(@"Perimeter of square that inscribes circle with unit circumference is about %f",
				[inscriber perimeter]);
	round = [[Circle alloc] init];
	inscriber = [[Square alloc] initWithSize:[round sideLength]];
	NSLog(@"Perimeter of square that inscribes the unit circle is %.0f.",
				[inscriber perimeter]);
	
	Square* sq = [[Square alloc] init];
	Circle* circumscriber = [[Circle alloc] initWithRadius:[sq radius]];
	NSLog(@"Circumference of circle that circumscribes unit square is about %f.",
				[circumscriber circumference]);
	
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
