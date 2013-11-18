//
//  kpcNbaTimerController.h
//  NBA Player Guess
//
//  Created by Kevin Connor on 11/13/13.
//  Copyright (c) 2013 Kevin Connor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface kpcNbaTimerController : NSObject
- (id) initWithTime:(NSInteger*)time;
- (void) startTimer:sender;
- (void) stopTimer:sender;
- (void) resetTimer:sender;
@end
