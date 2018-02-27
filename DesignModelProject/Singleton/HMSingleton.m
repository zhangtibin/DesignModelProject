//
//  HMSingleton.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/26.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "HMSingleton.h"

@implementation HMSingleton

static id _instance;

/**
 *  当类加载到OC运行时环境中（内存），就会调用一次（一个类只会加载1次）
 */
+ (void)load{
    _instance = [[self alloc] init];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    if (_instance == nil) { // 防止创建多次
        _instance = [super allocWithZone:zone];
    }
    return _instance;
}

+ (instancetype)sharedSingleton{
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone{
    return _instance;
}

@end
