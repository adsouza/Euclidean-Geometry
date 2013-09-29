@protocol Shape

@property(readonly) float perimeter;

@end


@interface ConvexPolygon : NSObject <Shape> {
}

@property(readonly) float perimeter;

- init;

@end
