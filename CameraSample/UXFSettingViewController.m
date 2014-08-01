//
//  UXFSettingViewController.m
//  CameraSample
//
//  Created by Kawai Takeshi on 2014/08/01.
//  Copyright (c) 2014年 Kawai Takeshi. All rights reserved.
//

#import "UXFSettingViewController.h"

@interface UXFSettingViewController ()
<UIPickerViewDataSource,UIPickerViewDelegate>
{
    NSArray *_pickerData;
}

@end

@implementation UXFSettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _pickerData = @[@"Large",@"Middle",@"Small"];
    
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}


@end
