//
//  kpcNbaTimerController.m
//  NBA Player Guess
//
//  Created by Kevin Connor on 11/13/13.
//  Copyright (c) 2013 Kevin Connor. All rights reserved.
//

#import "kpcNbaTimerController.h"

@interface kpcNbaTimerController()

@property NSInteger *timeInSeconds;
@property NSTimer *timer;

@end

@implementation kpcNbaTimerController

- (void) handleTimer:(NSTimer*)timer
{
    NSLog(@"timer");
}

- (void) startTimer:sender
{
    [self.timer invalidate];
    
    //NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(handleTimer:) repeats:YES];
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                    target:self
                                                    selector:@selector(handleTimer:) userInfo:nil repeats:YES];
    self.timer = timer;
}


@end
