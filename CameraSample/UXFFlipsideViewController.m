//
//  UXFFlipsideViewController.m
//  CameraSample
//
//  Created by Kawai Takeshi on 2014/08/01.
//  Copyright (c) 2014年 Kawai Takeshi. All rights reserved.
//

#import "UXFFlipsideViewController.h"

@interface UXFFlipsideViewController ()

@end

@implementation UXFFlipsideViewController

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

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
