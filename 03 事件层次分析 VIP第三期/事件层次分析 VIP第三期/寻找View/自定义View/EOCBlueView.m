//
//  EOCBlueView.m
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCBlueView.h"

@implementation EOCBlueView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor blueColor];
    return self;
    
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    
    NSLog(@"%@ pointInside", self.EOCBgColorString);
    return [super pointInside:point withEvent:event];
    
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    NSLog(@"%s",__func__);
    
//    return [super hitTest:point withEvent:event];
    return [self eocHitTest:point withEvent:event];;
    
}

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
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    EOCLog(@"%@ touchesCancelled", self.EOCBgColorString);
    [super touchesCancelled:touches withEvent:event];
}

@end
