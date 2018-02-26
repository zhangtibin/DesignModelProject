//
//  AbstractionTVControl.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/26.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "AbstractionTVControl.h"

@implementation AbstractionTVControl

- (instancetype)initWithSystem:(id <AbstractionSystem>)system
{
    self = [super init];
    if (self) {
        _systemImp = system;
    }
    return self;
}

- (void)Onoff
{
    // 抽象方法
}

- (void)nextChannel
{
    // 抽象方法
}

- (void)preChannel
{
    // 抽象方法
}

@end
