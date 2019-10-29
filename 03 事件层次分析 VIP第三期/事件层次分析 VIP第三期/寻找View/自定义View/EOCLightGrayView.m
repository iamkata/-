//
//  EOCLightGrayView.m
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCLightGrayView.h"

@implementation EOCLightGrayView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor lightGrayColor];
    return self;
    
}

//根据日志：先hitTest，再pointInside
//lightGrayView 它的pointInside返回NO，不会遍历lightGrayView的subViews
//pointInside：触摸的点在不在范围内，不在，找它的兄弟层级；在，遍历它的子view层级

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    
    NSLog(@"%@ pointInside", self.EOCBgColorString);
    
    //解决超出superView范围的button点击
//    UIView *subView = self.subviews[0];
//    CGPoint convertedPoint = [self convertPoint:point toView:subView];
//    if ([subView pointInside:convertedPoint withEvent:event]) {
//        return YES;
//    }
    
    return [super pointInside:point withEvent:event];
    
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    NSLog(@"%s",__func__);

    //1、hitTest会来调用pointInside   //得出这一条结论，常犯的错误：
    //2、根据pointInside的值来做不同的处理：如果pointInside为YES，那么反序遍历子view，如果pointInside为NO，返回nil
    //3、如果点击区域在自己这里，而不是在子view里，返回的是自己；
    //4、如果点击区域在子view里，返回的是子view
    
    return [super hitTest:point withEvent:event];
//    return [self eocHitTest:point withEvent:event];
    
}

//scrollView 系统会重写它的super touch：导致不能往上传递，
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    EOCLog(@"%@ touchBegan", self.EOCBgColorString);
    [super touchesBegan:touches withEvent:event];
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    EOCLog(@"%@ touchesMoved", self.EOCBgColorString);
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    EOCLog(@"%@ touchesEnded", self.EOCBgColorString);
//    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    EOCLog(@"%@ touchesCancelled", self.EOCBgColorString);
//    [super touchesCancelled:touches withEvent:event];
}

@end
