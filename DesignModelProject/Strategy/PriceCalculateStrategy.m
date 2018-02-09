//
//  PriceCalculateStrategy.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/9.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "PriceCalculateStrategy.h"

@implementation PriceCalculateStrategy

- (double)calculationPrice:(double)price
{
    return price;
}

@end

/**
 具体策略角色A：普通会员价格计算
 */
@implementation RegularMembersStrategy
// 普通会员原价
- (double)calculationPrice:(double)price
{
    NSLog(@"【普通会员】原价：折扣后价格：%.f", price);
    return price;
}

@end

/**
 具体策略角色B：中级会员价格计算
 */
@implementation IntermediateMemberStrategy
// 中级会员85折
- (double)calculationPrice:(double)price
{
    NSLog(@"【中级会员】享受85折：折扣后价格：%.f", price * 0.85);
    return price * 0.85;
}

@end

/**
 具体策略角色C：高级会员价格计算
 */
@implementation SeniorMemberStrategy
// 高级会员75折
- (double)calculationPrice:(double)price
{
    NSLog(@"【高级会员】享受75折：折扣后价格：%.f", price * 0.75);
    return price * 0.75;
}

@end
