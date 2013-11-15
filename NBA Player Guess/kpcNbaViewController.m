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

@end

@implementation kpcNbaViewController

- (void)viewDidLoad
{
    NSLog(@"before ViewDidLoad");
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    kpcNbaTimerController *timer = [kpcNbaTimerController alloc];
    [timer startTimer:self];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
