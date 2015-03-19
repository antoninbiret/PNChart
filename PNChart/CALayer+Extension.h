//
//  CALayer+Extension.h
//  Pods
//
//  Created by Antonin Biret on 19/03/15.
//
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (Extension)

- (void) bringSublayerToFront:(CALayer *)layer;

- (void) sendSublayerToBack:(CALayer *)layer;
    
@end
