//
//  Apple.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/8.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "Apple.h"

@implementation Apple

- (id)currentState
{
    return @{
             @"name":self.name,
             @"age":self.age
             };
}

- (void)recoverFromState:(id)state
{
    NSDictionary *dict = state;
    self.name = dict[@"name"];
    self.age = dict[@"age"];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=:%@, age=%@", self.name, self.age];
}

@end
