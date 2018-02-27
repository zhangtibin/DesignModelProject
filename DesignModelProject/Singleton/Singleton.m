//
//  Singleton.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "Singleton.h"

// 用static声明一个类的静态实例；
//static Singleton *_sharedInstance = nil;

@implementation Singleton

/**
 *  1.使用类方法生成这个类唯一的实例；
 */
+ (Singleton *)sharedInstance {
    static Singleton *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

@end
