@protocol Shape

@property(readonly) float perimeter;

@end


@interface ConvexPolygon : NSObject <Shape> {
}

@end
