@protocol Shape

@property(readonly) float perimeter;

@end


@interface ConvexPolygon : NSObject <Shape> {
}

@property(readonly) int numSides;
@property(readonly) int numDiagonals;

@end
