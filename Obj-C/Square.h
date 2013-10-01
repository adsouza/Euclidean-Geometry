#import "Rectangle.h"
#import "Equilateral.h"

@interface Square : Rectangle <Equilateral> {	
}

- (void)setWidth:(float)width height:(float)height;
- (void)setSideLength:(float)length;

@end
