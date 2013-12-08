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
    
    self.yearsExperience = [[kpcNbaIntegerScoringComponent alloc] init];
    
    self.yearsExperience.data = 0;
    self.yearsExperience.pointValue = 100;
    self.yearsExperience.title = @"Years Experience";
    
    return self;
}


@end
