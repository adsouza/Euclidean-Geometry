#import <Cocoa/Cocoa.h>

@class NSColor;

@interface Shape : NSObject {
	NSColor *primaryColor;
	BOOL filled;
	NSColor *fillColor;
}

@property(retain) NSColor *primaryColor;
@property(getter=isFilled) BOOL filled;
@property(retain) NSColor *fillColor;
@property(readonly) float perimeter;

- init;
- initWithColor:(NSColor *)primary fill:(NSColor *)fill;
- initFilled:(NSColor *)color;
- (void)dealloc;

@end
