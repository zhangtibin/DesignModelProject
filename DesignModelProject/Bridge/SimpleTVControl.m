//
//  SimpleTVControl.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/26.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "SimpleTVControl.h"

@interface SimpleTVControl ()

@property (nonatomic, assign) BOOL isOn;
@property (nonatomic, assign) NSInteger channel;

@end

@implementation SimpleTVControl

- (void)Onoff
{
    if (self.isOn) {
        [self.systemImp off];
    } else {
        [self.systemImp on];
    }
    self.isOn = !self.isOn;
}

- (void)nextChannel
{
    self.channel++;
    [self.systemImp setChannel:self.channel];
}

- (void)preChannel
{
    self.channel--;
    [self.systemImp setChannel:self.channel];
}

@end
