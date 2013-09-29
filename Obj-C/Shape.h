@protocol Shape

@property(readonly) float perimeter;

@end


@interface ConvexPolygon : NSObject <Shape> {
}

- init;

@end
