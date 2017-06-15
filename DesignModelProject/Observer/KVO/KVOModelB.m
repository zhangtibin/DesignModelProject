//
//  KVOModelB.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "KVOModelB.h"

@implementation KVOModelB

#pragma mark - 在观察者中，必须实现的KVO的观察键值的方法
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSKeyValueChangeKey,id> *)change
                       context:(void *)context
{
    self.name = [NSString stringWithFormat:@"%@", [self class]];
}

@end
