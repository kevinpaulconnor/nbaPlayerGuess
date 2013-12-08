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
    self.scoringComponentValues = [[NSMutableDictionary alloc] init];
    
    return self;
}

- (void) initializeScoringComponentValues {
    NSString *playerDataPlistCatPath = [[NSBundle mainBundle] pathForResource:@"playerData" ofType:@"plist"];
    NSArray *playerData = [NSArray arrayWithContentsOfFile:playerDataPlistCatPath];
    NSString *scoringComponentPlistCatPath = [[NSBundle mainBundle] pathForResource:@"scoringComponent" ofType:@"plist"];
    NSDictionary *scoringComponentData = [NSArray arrayWithContentsOfFile:scoringComponentPlistCatPath];
    
    int i = 0;
   /* for (id player in playerData) {
        for (id key in player) {
            if ([player[key] isKindOfClass:[NSString class]]) {
                self.scoringComponents[i] = [[kpcNbaStringScoringComponent alloc] init];
            } else {
                
            }
        }
        [self setScoringComponent:scoringComponentData :self.scoringComponents[i] ];
        i++;
        //NSLog(@"object: %@", object);
        NSLog(@"isString: %hhd", [player[@"College"] isKindOfClass:[NSString class]]);
        NSLog(@"isString: %hhd", [player[@"PPG"] isKindOfClass:[NSString class]]);
        //for (id key in player) {
          //  NSLog(@"key: %@", key);
        //}
    }*/
    //self.yearsExperience = [[kpcNbaIntegerScoringComponent alloc] init];
    //self.yearsExperience.data = 0;
    //self.yearsExperience.pointValue = 100;
    //self.yearsExperience.title = @"EXP";

}

- (void) setScoringComponent:(NSDictionary*)scData :(id)component {
    
}

@end
