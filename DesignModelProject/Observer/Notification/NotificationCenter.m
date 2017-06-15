//
//  NotificationCenter.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "NotificationCenter.h"

@implementation NotificationCenter

#pragma mark - 添加通知 flag : 标签
+ (void)addObserver:(NSObject *)observer selector:(SEL)aSelector flag:(NSString *)flag
{
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:aSelector name:flag object:nil];
}

#pragma mark - 发送消息 根据 flag 标签找到对应的对象
+ (void)sendMessage:(id)message toFlag:(NSString *)flag
{
    [[NSNotificationCenter defaultCenter] postNotificationName:flag object:nil userInfo:message];
}

#pragma mark - 移除通知
+ (void)removeObserver:(NSObject *)observer flag:(NSString *)flag
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:flag object:nil];
}

@end
