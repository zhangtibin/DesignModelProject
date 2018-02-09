//
//  PriceCalculateStrategy.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/9.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 抽象策略角色：价格计算策略
 */
@interface PriceCalculateStrategy : NSObject

- (double)calculationPrice:(double)price;///<计算价格

@end


/**
 具体策略角色A：普通会员价格计算
 */
@interface RegularMembersStrategy : PriceCalculateStrategy

- (double)calculationPrice:(double)price;

@end


/**
 具体策略角色B：中级会员价格计算
 */
@interface IntermediateMemberStrategy : PriceCalculateStrategy

- (double)calculationPrice:(double)price;

@end


/**
 具体策略角色C：高级会员价格计算
 */
@interface SeniorMemberStrategy : PriceCalculateStrategy

- (double)calculationPrice:(double)price;

@end



