//
//  ViewController.m
//  EmptyApp
//
//  Created by 陈晓峰 on 15/9/26.
//  Copyright (c) 2015年 陈晓峰. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _titleContent = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, SCREEN_WIDTH, 30)];
    _titleContent.textAlignment = NSTextAlignmentCenter;
    _titleContent.textColor = [UIColor orangeColor];
    [self.view addSubview:_titleContent];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setTitleString:(NSString *)title{
    _titleContent.text = title;
}

@end
