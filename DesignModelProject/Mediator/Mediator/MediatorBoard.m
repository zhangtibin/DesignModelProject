//
//  MediatorBoard.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "MediatorBoard.h"

#import "CDDriver.h"
#import "CPU.h"
#import "VideoCard.h"

static MediatorBoard *instance = nil;

@implementation MediatorBoard

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (instance == nil) {
            instance = [[self alloc] init];
        }
    });
    return instance;
}

- (void)handleData:(NSMutableString *)data dataSource:(id)source
{
    if ([source isKindOfClass:[CDDriver class]]) {
        CPU *cpu = [[CPU alloc] init];
        [cpu executeData:data];
    }
    else if ([source isKindOfClass:[CPU class]]) {
        VideoCard *video = [VideoCard new];
        [video executeData:data];
    }
}

@end
