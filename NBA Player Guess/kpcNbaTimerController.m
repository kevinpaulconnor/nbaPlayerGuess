//
//  kpcNbaTimerController.m
//  NBA Player Guess
//
//  Created by Kevin Connor on 11/13/13.
//  Copyright (c) 2013 Kevin Connor. All rights reserved.
//

#import "kpcNbaTimerController.h"

@interface kpcNbaTimerController()

@property NSInteger timeInSeconds;
@property NSTimer *timer;

@end

@implementation kpcNbaTimerController

- (kpcNbaTimerController*) initWithTime:(NSInteger*)time {
    // to-do - generate exception instead of returning nil?
    if (self = [super init]) {
        if (time == nil) {
            self.timeInSeconds = 1000;
        } else {
            self.timeInSeconds = *(time);
        }

        return self;
    } else {
        return nil;
    }
}

- (void) handleTimer:(NSTimer*)timer
{
    NSLog(@"timer");
}

- (void) startTimer:sender
{
    [self.timer invalidate];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                    target:self
                                                    selector:@selector(handleTimer:) userInfo:nil repeats:YES];
    self.timer = timer;
}

- (void) stopTimer:sender {
    [self.timer invalidate];
}

- (void) resetTimer:sender {
    [self.timer invalidate];
    
}

@end
