//
//  Memo.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/5.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "Memo.h"

@implementation Memo

- (Memo *)initWithName:(NSString *)name address:(NSString *)address
{
    _tempName = name;
    _tempAddress = address;
    return self;
}

- (NSString *)getName
{
    return _tempName;
}

- (NSString *)getAddress
{
    return _tempAddress;
}

@end
