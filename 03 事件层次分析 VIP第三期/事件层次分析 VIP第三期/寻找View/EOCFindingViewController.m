//
//  EOCFindingViewController.m
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCFindingViewController.h"
#import "EOCLightGrayView.h"
#import "EOCRedView.h"
#import "EOCBlueView.h"
#import "EOCYellowView.h"

@interface EOCFindingViewController ()

@end

@implementation EOCFindingViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //修改view颜色为白色
    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建view层次
    [self createViewHierachy];
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [self logResponderChain];
}

//通过UIResponder来连接组成响应链，打印响应链：
- (void)logResponderChain {
    
    NSLog(@"响应链");
    
}

- (void)createViewHierachy {
    
    EOCLightGrayView *grayView = [[EOCLightGrayView alloc] initWithFrame:CGRectMake(50.f, 100.f, 260.f, 200.f)];
    
    EOCRedView *redView = [[EOCRedView alloc] initWithFrame:CGRectMake(0.f, 0.f, 120.f, 100.f)];
    
    EOCBlueView *blueView = [[EOCBlueView alloc] initWithFrame:CGRectMake(140.f, 100.f, 100.f, 100.f)];
    
    EOCYellowView *yellowView = [[EOCYellowView alloc] initWithFrame:CGRectMake(50.f, 360.f, 200.f, 200.f)];
    
    [self.view addSubview:grayView];
    [grayView addSubview:redView];
    [grayView addSubview:blueView];
    [self.view addSubview:yellowView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    EOCLog(@"%s", __func__);
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    EOCLog(@"%s", __func__);
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    EOCLog(@"%s", __func__);
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    EOCLog(@"%s", __func__);
    [super touchesCancelled:touches withEvent:event];
}

@end
