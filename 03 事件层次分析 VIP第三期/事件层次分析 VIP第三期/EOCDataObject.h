//
//  EOCDataObject.h
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCDataObject : NSObject

@property(nonatomic, strong)NSString *cellText;
@property(nonatomic, assign)EOCViewType viewType;

- (instancetype)initWithCellText:(NSString *)cellText viewType:(EOCViewType)viewType;

@end
