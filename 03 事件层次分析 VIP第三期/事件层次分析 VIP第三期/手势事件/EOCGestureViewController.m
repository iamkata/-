//
//  EOCGestureViewController.m
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCGestureViewController.h"
#import "EOCCustomGesture.h"
#import "EOCLightGrayView.h"
#import "EOCRedView.h"
#import "EOCBlueView.h"
#import "EOCYellowView.h"

@interface EOCGestureViewController ()

@end

@implementation EOCGestureViewController

/**
 1、手势和pointInside以及hitTest的关系：必须先通过pointInside和hitTest找到view，才可能响应view的手势事件
 2、通过hitTest、pointInside找到的view，那么view和它的superView的手势都能响应；但是如果找到view，不会响应它的子view的手势
 3、手势的种类怎么分辨出来：tap、pangesture、swipeGesture:手势的touch的四个方法来识别
 4、手势和view的touch事件的关系:delayTouchBegin、cancelTouchInView
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createGesture];
//        [self createViewHierachy];
    
}


///我通过pointInside以及hitTest找到了view，然后如果view或者它的superView有手势事件，都会响应
- (void)createViewHierachy {
    
    EOCCustomGesture *tapGesture = [[EOCCustomGesture alloc] initWithTarget:self action:@selector(panAction)];
    
    EOCLightGrayView *grayView = [[EOCLightGrayView alloc] initWithFrame:CGRectMake(50.f, 100.f, 260.f, 200.f)];
    
    EOCRedView *redView = [[EOCRedView alloc] initWithFrame:CGRectMake(0.f, 0.f, 120.f, 100.f)];
    
    EOCBlueView *blueView = [[EOCBlueView alloc] initWithFrame:CGRectMake(140.f, 100.f, 100.f, 100.f)];
    
    EOCYellowView *yellowView = [[EOCYellowView alloc] initWithFrame:CGRectMake(50.f, 360.f, 200.f, 200.f)];
    
    [blueView addGestureRecognizer:tapGesture];
    
    [self.view addSubview:grayView];
    [grayView addSubview:redView];
    [grayView addSubview:blueView];
    [self.view addSubview:yellowView];
}

- (void)createGesture
{
    EOCRedView *redView = [[EOCRedView alloc] initWithFrame:CGRectMake(100.f, 100.f, 100.f, 100.f)];
    [self.view addSubview:redView];
    
    EOCCustomGesture *tapGesture = [[EOCCustomGesture alloc] initWithTarget:self action:@selector(panAction)];
    
    //默认情况下，如果手势识别出来了，会cancel掉view 的touch事件
    
    //1、手势识别出来，view的touch没有cancel
    tapGesture.delaysTouchesBegan = NO;   //如果为YES，阻止touch方法的识别
    tapGesture.cancelsTouchesInView = NO;
    
    
    [redView addGestureRecognizer:tapGesture];
}

- (void)panAction
{
    NSLog(@"%s", __func__);
}



@end
