//
//  WaiterInvoker.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/11.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CommandProtocol.h"

@interface WaiterInvoker : NSObject

/**
 点餐
 */
- (void)addOrder:(id <CommandProtocol>)command;

/**
 取消点餐
*/
- (void)cancelOrder:(id <CommandProtocol>)command;

/**
 提交菜单
 */
- (void)submitOrder;

@end
