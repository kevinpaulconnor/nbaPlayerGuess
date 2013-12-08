//
//  kpcNbaViewController.m
//  NBA Player Guess
//
//  Created by Kevin Connor on 11/13/13.
//  Copyright (c) 2013 Kevin Connor. All rights reserved.
//

#import "kpcNbaViewController.h"
#import "kpcNbaTimerController.h"
#import "kpcNbaPlayer.h"
#import "kpcNbaScoringComponent.h"

@interface kpcNbaViewController ()
@property kpcNbaTimerController *timer;
@property kpcNbaPlayer* player;
@property NSDictionary* scoringComponentData;

@end

@implementation kpcNbaViewController

- (void)viewDidLoad
{
    NSLog(@"before ViewDidLoad");
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    
    [self initializeScoringComponentData];
    
    self.timer = [[kpcNbaTimerController alloc] initWithTime:nil];
    self.player = [self getPlayer];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) initializeScoringComponentData {
    NSString *scoringComponentPlistCatPath = [[NSBundle mainBundle] pathForResource:@"scoringComponentData" ofType:@"plist"];
    self.scoringComponentData = [[NSDictionary alloc] initWithContentsOfFile:scoringComponentPlistCatPath];
    
    NSLog(@"scData: %@", self.scoringComponentData);
}

- (IBAction)startTimer:(id)sender {
    [self.timer startTimer:sender];
}
- (IBAction)stopTimer:(id)sender {
    [self.timer stopTimer:sender];
}
- (IBAction)resetTimer:(id)sender {
    [self.timer resetTimer:sender];
}

- (kpcNbaPlayer*) getPlayer {
    return [[kpcNbaPlayer alloc] init];
}

@end
