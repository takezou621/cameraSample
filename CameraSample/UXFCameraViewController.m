//
//  UXFCameraViewController.m
//  CameraSample
//
//  Created by Kawai Takeshi on 2014/08/01.
//  Copyright (c) 2014年 Kawai Takeshi. All rights reserved.
//

#import "UXFCameraViewController.h"

@interface UXFCameraViewController ()
<
UIImagePickerControllerDelegate,
UINavigationControllerDelegate
>
{
    UIImagePickerControllerSourceType _sourceType;
}
@property (nonatomic, strong) UIImagePickerController *picker;
@end

@implementation UXFCameraViewController

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
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 ライブラリから写真を選択
 */
- (IBAction)selectFromLibraryAction:(id)sender {
    
    _sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self pickerView];
}

/**
 写真を撮影する
 */
- (IBAction)takePhotoAction:(id)sender {
    
    _sourceType = UIImagePickerControllerSourceTypeCamera;
    [self pickerView];
}

- (void)pickerView
{
    self.picker = [[UIImagePickerController alloc] init];
    self.picker.delegate = self;
    self.picker.sourceType = _sourceType;
    [self presentViewController:self.picker animated:YES completion:nil];
}
@end
