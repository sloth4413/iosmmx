//
//  ViewController.m
//  TransformDemo
//
//  Created by 陈晓峰 on 15/9/27.
//  Copyright (c) 2015年 陈晓峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView *_scaleImage;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //对视图进行旋转变换
//    self.view.transform = CGAffineTransformMakeRotation(45 * M_PI/180.0);
//    self.view.backgroundColor = [UIColor orangeColor];
//    CGRect frameRect = self.view.frame;
//    frameRect.size.width = self.view.frame.size.width/2;
//    frameRect.size.height = self.view.frame.size.height/2;
//    self.view.frame =frameRect;
    
    //对视图进行缩放变换
//    self.view.transform = CGAffineTransformScale(self.view.transform, 0.5f, 0.5f);
//    self.view.backgroundColor = [UIColor orangeColor];
    
    _scaleImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"horse.png"]];
    _scaleImage.bounds = CGRectMake(0, 0, self.view.bounds.size.width/3, self.view.bounds.size.height/3);
    _scaleImage.center = self.view.center;
    
    _scaleImage.transform = CGAffineTransformScale(_scaleImage.transform, 0.5, 0.5);
    _scaleImage.transform = CGAffineTransformRotate(_scaleImage.transform, 45*M_PI/180.0f);
    
    [self.view addSubview:_scaleImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
