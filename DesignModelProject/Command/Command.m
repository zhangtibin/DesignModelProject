//
//  Command.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/11.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "Command.h"

@implementation Command

- (instancetype)initWithReceiver:(ChefReceiver *)chef
{
    if (self = [super init]) {
        _receiver = chef;//接收者是厨师
    }
    return self;
}

- (void)execute
{
    
}


@end
