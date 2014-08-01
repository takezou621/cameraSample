//
//  UXFMainViewController.m
//  CameraSample
//
//  Created by Kawai Takeshi on 2014/08/01.
//  Copyright (c) 2014年 Kawai Takeshi. All rights reserved.
//

#import "UXFMainViewController.h"

@interface UXFMainViewController ()

@end

@implementation UXFMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(UXFFlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
