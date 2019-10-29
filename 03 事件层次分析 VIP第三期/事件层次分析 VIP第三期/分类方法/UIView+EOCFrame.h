//
//  UIView+EOCFrame.h
//  事件层次分析
//
//  Created by 八点钟学院 on 2017/3/16.
//  Copyright © 2017年 八点钟学院. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (EOCFrame)


@property (assign, nonatomic) CGFloat eocW;
@property (assign, nonatomic) CGFloat eocH;
@property (assign, nonatomic) CGSize eocSize;
@property (assign, nonatomic) CGPoint eocOrigin;

@end
