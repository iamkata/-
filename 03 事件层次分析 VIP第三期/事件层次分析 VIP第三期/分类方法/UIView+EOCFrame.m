//
//  UIView+EOCFrame.m
//  事件层次分析
//
//  Created by 八点钟学院 on 2017/3/16.
//  Copyright © 2017年 八点钟学院. All rights reserved.
//

#import "UIView+EOCFrame.h"

@implementation UIView (EOCFrame)

- (void)setEocH:(CGFloat)eocH
{
    CGRect frame = self.frame;
    frame.size.height = eocH;
    self.frame = frame;
}

- (CGFloat)eocH
{
    return self.frame.size.height;
}

- (void)setEocW:(CGFloat)eocW
{
    CGRect frame = self.frame;
    frame.size.width = eocW;
    self.frame = frame;
}

- (CGFloat)eocW
{
    return self.frame.size.width;
}

- (void)setEocOrigin:(CGPoint)eocOrigin
{
    CGRect frame = self.frame;
    frame.origin = eocOrigin;
    self.frame = frame;
}

- (CGPoint)eocOrigin
{
    return self.frame.origin;
}

- (void)setEocSize:(CGSize)eocSize
{
    CGRect frame = self.frame;
    frame.size = eocSize;
    self.frame = frame;
}

- (CGSize)eocSize
{
    return self.frame.size;
}
@end
