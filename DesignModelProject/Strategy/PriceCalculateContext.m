//
//  PriceCalculateContext.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/9.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "PriceCalculateContext.h"

#import "PriceCalculateStrategy.h"

@implementation PriceCalculateContext
{
    PriceCalculateStrategy *event;
}

/// < 价格计算环境角色
- (instancetype)initWithMemberType:(int)type
{
    if (self = [super init]) {
        switch (type) {
            case 0:// 普通客户
                event = [[RegularMembersStrategy alloc] init];
                break;
                
            case 1:// 中级客户
                event = [[IntermediateMemberStrategy alloc] init];
                break;
                
            case 2:// 高级客户
                event = [[SeniorMemberStrategy alloc] init];
                break;
                
            case 3:
                event = [[PriceCalculateStrategy alloc] init];
                break;
                
            default:
                break;
        }
    }
    return self;
}

- (double)goodsFinalPriceWithPrice:(double)price
{
    return [event calculationPrice:price];
}

@end
