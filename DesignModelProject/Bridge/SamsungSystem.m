//
//  SamsungSystem.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/26.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "SamsungSystem.h"

@implementation SamsungSystem

- (void)on
{
    NSLog(@"~~~~~SamsungTV: 打开");
}

- (void)off
{
    NSLog(@"~~~~~SamsungTV: 关闭");
}

- (void)setChannel:(NSInteger)ch
{
    NSLog(@"~~~~~SamsungTV: 频道:%@", @(ch));
}

- (void)setVolume:(NSInteger)vol
{
    NSLog(@"~~~~~SamsungTV: 音量:%@", @(vol));
}

@end
