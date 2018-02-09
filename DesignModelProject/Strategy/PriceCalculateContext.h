//
//  PriceCalculateContext.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/9.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 环境角色
 */
@interface PriceCalculateContext : NSObject

- (instancetype)initWithMemberType:(int)type;
- (double)goodsFinalPriceWithPrice:(double)price;

@end
