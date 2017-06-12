//
//  MetentoCenter.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/8.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "MetentoCenter.h"

#import "FastCoder.h"

@implementation MetentoCenter

+ (void)saveMementoObject:(id<MementoCenterProtocol>)obect withKey:(NSString *)key
{
    NSParameterAssert(obect);
    NSParameterAssert(key);
    
    // 先用 FastCoding 将字典对象转化成二进制 NSData 数据
    id data = [obect currentState];
    NSData *tmpData = [FastCoder dataWithRootObject:data];
    
    // 然后将这个 NSData 存储到沙盒中
    if (tmpData) {
        [[NSUserDefaults standardUserDefaults] setObject:tmpData forKey:key];
    }
}

+ (id)mementoObjectWithKey:(NSString *)key
{
    NSParameterAssert(key);
    id data = nil;
    NSData *tmpData = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if (tmpData) {
        data = [FastCoder objectWithData:tmpData];
    }
    return data;
}

+ (void)removeObjectWithKey:(NSString *)key
{
    NSParameterAssert(key);
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
}

@end
