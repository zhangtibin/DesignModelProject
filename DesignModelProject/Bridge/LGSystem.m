//
//  LGSystem.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/26.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "LGSystem.h"

@implementation LGSystem

- (void)on
{
    NSLog(@"~~~~~LGTV: 打开");
}

- (void)off
{
    NSLog(@"~~~~~LGTV: 关闭");
}

- (void)setChannel:(NSInteger)ch
{
    NSLog(@"~~~~~LGTV: 频道:%@", @(ch));
}

- (void)setVolume:(NSInteger)vol
{
    NSLog(@"~~~~~LGTV: 音量%@", @(vol));
}

@end
