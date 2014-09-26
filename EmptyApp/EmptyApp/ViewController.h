//
//  ViewController.h
//  EmptyApp
//
//  Created by 陈晓峰 on 15/9/26.
//  Copyright (c) 2015年 陈晓峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic,strong,readonly) UILabel *titleContent;

-(void)setTitleString:(NSString*)title;
@end

