//
//  kpcNbaViewController.m
//  NBA Player Guess
//
//  Created by Kevin Connor on 11/13/13.
//  Copyright (c) 2013 Kevin Connor. All rights reserved.
//

#import "kpcNbaViewController.h"
#import "kpcNbaTimerController.h"

@interface kpcNbaViewController ()
@property kpcNbaTimerController *timer;

@end

@implementation kpcNbaViewController

- (void)viewDidLoad
{
    NSLog(@"before ViewDidLoad");
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    self.timer = [[kpcNbaTimerController alloc] initWithTime:nil];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

@end
