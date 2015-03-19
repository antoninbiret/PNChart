//
//  CALayer+Extension.m
//  Pods
//
//  Created by Antonin Biret on 19/03/15.
//
//

#import "CALayer+Extension.h"

@implementation CALayer (Extension)

- (void) bringSublayerToFront:(CALayer *)layer {
    [layer removeFromSuperlayer];
    [self insertSublayer:layer atIndex:[self.sublayers count]];
}

- (void) sendSublayerToBack:(CALayer *)layer {
    [layer removeFromSuperlayer];
    [self insertSublayer:layer atIndex:0];
}

@end
