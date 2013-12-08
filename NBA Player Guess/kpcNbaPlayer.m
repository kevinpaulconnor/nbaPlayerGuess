//
//  kpcNbaPlayer.m
//  NBA Player Guess
//
//  Created by Kevin Connor on 12/8/13.
//  Copyright (c) 2013 Kevin Connor. All rights reserved.
//

#import "kpcNbaPlayer.h"

@implementation kpcNbaPlayer

- (kpcNbaPlayer*) init {
    self = [super init];
    
    [self initializeScoringComponents];
    
    return self;
}

- (void) initializeScoringComponents {
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:@"playerData" ofType:@"plist"];
    NSArray *playerData = [NSArray arrayWithContentsOfFile:plistCatPath];

    NSLog(@"playerData: %@", playerData);
    //self.yearsExperience = [[kpcNbaIntegerScoringComponent alloc] init];
    //self.yearsExperience.data = 0;
    //self.yearsExperience.pointValue = 100;
    //self.yearsExperience.title = @"EXP";

}

@end
