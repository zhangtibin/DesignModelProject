//
//  WaiterInvoker.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/11.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "WaiterInvoker.h"

@interface WaiterInvoker ()

@property (nonatomic, strong) NSMutableArray *commandQueue;

@end

@implementation WaiterInvoker

- (instancetype)init
{
    if (self = [super init]) {
        self.commandQueue = [[NSMutableArray alloc] initWithCapacity:1];
    }
    return self;
}

- (void)addOrder:(id<CommandProtocol>)command
{
    [_commandQueue addObject:command];
}

- (void)cancelOrder:(id<CommandProtocol>)command
{
    if ([_commandQueue containsObject:command]) {
        NSLog(@"取消订单:%@", command);
        [_commandQueue removeObject:command];
    }
    else {
        NSLog(@"无法取消订单：%@", command);
    }
}

- (void)submitOrder
{
    for (id <CommandProtocol> command in _commandQueue) {
        [command execute];
    }
    [_commandQueue removeAllObjects];
}

@end
