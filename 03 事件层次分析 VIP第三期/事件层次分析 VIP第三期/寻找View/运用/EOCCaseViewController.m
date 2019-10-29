//
//  EOCCaseViewController.m
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCCaseViewController.h"
#import "EOCCustomButton.h"
#import "EOCLightGrayView.h"

@interface EOCCaseViewController ()

@end

@implementation EOCCaseViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
//    [self smallButtonCase];
    [self beyondViewScope];
}

- (void)smallButtonCase {
    
    EOCCustomButton *btn = [EOCCustomButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100.f, 100.f, 10.f, 10.f);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

- (void)beyondViewScope {
    
    CGFloat viewHeight = 40.f;
    EOCLightGrayView *view = [[EOCLightGrayView alloc] initWithFrame:CGRectMake(0.f, 300.f, self.view.eocW, viewHeight)];
    [self.view addSubview:view];
    
    EOCCustomButton *btn = [EOCCustomButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100.f, -20.f, viewHeight+20.f, viewHeight+20.f);
    [btn setImage:[UIImage imageNamed:@"photo"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchDown];
    [view addSubview:btn];
    
}

- (void)btnAction {
    
    NSLog(@"btnAction！！！");
    
}

@end
