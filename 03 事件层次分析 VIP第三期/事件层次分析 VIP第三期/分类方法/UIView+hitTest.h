//
//  UIView+hitTest.h
//  事件层次分析
//
//  Created by 八点钟学院 on 2017/9/18.
//  Copyright © 2017年 八点钟学院. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (hitTest)

- (UIView *)eocHitTest:(CGPoint)point withEvent:(UIEvent *)event;

@end
