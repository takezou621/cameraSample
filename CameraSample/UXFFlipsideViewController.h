//
//  UXFFlipsideViewController.h
//  CameraSample
//
//  Created by Kawai Takeshi on 2014/08/01.
//  Copyright (c) 2014年 Kawai Takeshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UXFFlipsideViewController;

@protocol UXFFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(UXFFlipsideViewController *)controller;
@end

@interface UXFFlipsideViewController : UIViewController

@property (weak, nonatomic) id <UXFFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
