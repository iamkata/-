//
//  EOCDataObject.m
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import "EOCDataObject.h"

@implementation EOCDataObject

- (instancetype)initWithCellText:(NSString *)cellText viewType:(EOCViewType)viewType
{
    if (self = [super init]) {
        
        self.cellText = cellText;
        self.viewType = viewType;
        
    }
    
    return self;
}

@end
