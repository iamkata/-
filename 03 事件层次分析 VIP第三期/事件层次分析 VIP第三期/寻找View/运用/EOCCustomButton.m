//
//  EOCCustomButton.m
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCCustomButton.h"

@implementation EOCCustomButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {

    NSLog(@"%s",__func__);
    //在我想要的区域，pointInside返回YES
    CGRect rect = self.bounds;
    
    if (rect.size.width < 50.f) {
        rect.origin.x -= (50.f - rect.size.width)/2;
    }
    
    if (rect.size.height < 50.f) {
        rect.origin.y -= (50.f - rect.size.width)/2;
    }
    
    rect.size.width = 50.f;
    rect.size.height = 50.f;
    
    if (CGRectContainsPoint(rect, point)) {
        return YES;
    }

    return [super pointInside:point withEvent:event];

}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    NSLog(@"%s",__func__);
    
    return [super hitTest:point withEvent:event];
    
    
}


@end
