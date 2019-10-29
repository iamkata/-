//
//  UIView+hitTest.m
//  事件层次分析
//
//  Created by 八点钟学院 on 2017/9/18.
//  Copyright © 2017年 八点钟学院. All rights reserved.
//

#import "UIView+hitTest.h"

@implementation UIView (hitTest)

- (UIView *)eocHitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    
    if (self.alpha <= 0.01 || !self.userInteractionEnabled || self.hidden) {
        return nil;
    }
    
    if ([self pointInside:point withEvent:event]) {  //发生在我的范围内
        
        //遍历子view
        NSArray *subViews = [[self.subviews reverseObjectEnumerator] allObjects];
        UIView *tmpView;
        
        for (UIView *subView in subViews) {
            
            //转换坐标系，然后判断该点是否在bounds范围内
            CGPoint convertedPoint = [self convertPoint:point toView:subView];
            tmpView = [subView eocHitTest:convertedPoint withEvent:event];
            
        }
        return tmpView?tmpView:self;
        
    } else {
        
        return nil;
        
    }
        


    
    
//    if (self.alpha <= 0.01 || !self.userInteractionEnabled || self.hidden) {
//        return nil;
//    }
//
//    if ([self pointInside:point withEvent:event]) { //point在view内
//        //遍历子view
//        NSArray *subViews = [[self.subviews reverseObjectEnumerator]allObjects];
//        for (UIView *view in subViews) {
//
//            CGPoint convertedPoint = [self convertPoint:point toView:view];
//            if ([view pointInside:convertedPoint withEvent:event]) {
//                return view;
//            }
//
//        }
//        return self;
//
//    } else {
//        return nil;
//    }
    
}

@end
