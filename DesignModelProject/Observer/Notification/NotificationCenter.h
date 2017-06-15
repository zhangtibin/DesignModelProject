//
//  NotificationCenter.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotificationCenter : NSObject

// 添加通知 flag:标签
+ (void)addObserver:(NSObject *)observer selector:(SEL)aSelector flag:(NSString *)flag;

// 发送消息 根据 flag 标签找到对应的对象
+ (void)sendMessage:(id)message toFlag:(NSString *)flag;

// 移除通知
+ (void)removeObserver:(NSObject *)observer flag:(NSString *)flag;

@end
