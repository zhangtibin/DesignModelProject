//
//  HandlerLeader.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/7.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Purchase.h"

/**
 抽象处理者角色
 */
@interface HandlerLeader : NSObject <Purchase>

@property (nonatomic, weak) id <Purchase> superior;

@end
