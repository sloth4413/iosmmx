//
//  ViewController.m
//  ImageDrawDemo
//
//  Created by 陈晓峰 on 15/9/27.
//  Copyright (c) 2015年 陈晓峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImage *_centerImage;
    
    UIImage *_processedImage;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setCenterImage];
}

-(void)setCenterImage{
    _centerImage = [UIImage imageNamed:@"big.png"];
    UIImageView *centerImageView = [[UIImageView alloc] initWithImage:_centerImage];
    [self.view addSubview:centerImageView];
    centerImageView.center = CGPointMake(CGRectGetMidX(centerImageView.superview.frame), CGRectGetMidY(centerImageView.superview.frame));
    centerImageView.frame = CGRectIntegral(centerImageView.frame);
    //centerImageView.contentMode = UIViewContentModeScaleToFill;
    
    //拉伸模式
    UIEdgeInsets    capInsets = UIEdgeInsetsMake(_centerImage.size.height/4, _centerImage.size.width/4, _centerImage.size.height/4, _centerImage.size.width/4);
    _processedImage = [_centerImage resizableImageWithCapInsets:capInsets resizingMode:UIImageResizingModeTile];
    centerImageView.image =_processedImage;
    centerImageView.bounds = CGRectMake(0, 0, _centerImage.size.width, _centerImage.size.height);
    //[centerImageView setNeedsDisplay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
