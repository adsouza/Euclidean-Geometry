#import <Cocoa/Cocoa.h>

@class NSColor;

@interface Shape : NSObject {
	NSColor *outlineColor;
	NSColor *fillColor;
}

@property(retain) NSColor *outlineColor;
@property(retain) NSColor *fillColor;
@property(readonly) BOOL isFilled;
@property(readonly) float perimeter;

- init;
- initWithColor:(NSColor *)outline fill:(NSColor *)fill;
- initFilled:(NSColor *)color;

@end
