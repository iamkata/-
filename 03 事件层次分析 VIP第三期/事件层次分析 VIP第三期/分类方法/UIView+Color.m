//
//  UIView+Color.m
//  事件层次分析
//
//  Created by 八点钟学院 on 2017/3/16.
//  Copyright © 2017年 八点钟学院. All rights reserved.
//

#import "UIView+Color.h"

@implementation UIView (Color)


- (NSString *)EOCBgColorString
{
    if (self.backgroundColor == [UIColor redColor]) {
        
        return @"redColorView";
        
    } else if (self.backgroundColor == [UIColor blueColor]) {
        
        return @"blueColorView";
        
    } else if (self.backgroundColor == [UIColor yellowColor]) {
        
        return @"yellowColorView";
        
    } else if (self.backgroundColor == [UIColor lightGrayColor]) {
        
        return @"ligthGrayColorView";
        
    }
    
    return nil;
}



@end
