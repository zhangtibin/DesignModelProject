//
//  SandwichCommand.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/11.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "SandwichCommand.h"

@implementation SandwichCommand

- (void)execute
{
    [self.receiver cookSandwich];
}

@end
