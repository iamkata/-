//
//  EOCButtonEventViewController.m
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCButtonEventViewController.h"
#import "EOCCustomButton.h"

@implementation EOCButtonEventViewController

/**
 1、button的点击和pointInside、hitTest有啥关系： 必须有button的返回，才能响应事件
 2、button不同事件识别：也是通过四个touch方法来辨别的
 3、button的事件响应流程
 
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    EOCCustomButton *customBtn = [EOCCustomButton buttonWithType:UIButtonTypeCustom];
    customBtn.frame = CGRectMake(100.f, 100.f, 100.f, 100.f);
    customBtn.backgroundColor = [UIColor redColor];
    [customBtn setTitle:@"八点钟学院" forState:UIControlStateHighlighted];
    [customBtn addTarget:self action:@selector(btnAction:withEvent:) forControlEvents:UIControlEventTouchDown];
    
    [customBtn sendActionsForControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:customBtn];
}

- (void)btnAction:(EOCCustomButton *)btn withEvent:(UIEvent *)event
{
    NSLog(@"八点钟学院");
}

@end
