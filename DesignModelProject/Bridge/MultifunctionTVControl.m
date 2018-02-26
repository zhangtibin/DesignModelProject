//
//  MultifunctionTVControl.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/26.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "MultifunctionTVControl.h"

@interface MultifunctionTVControl ()

@property (nonatomic, assign) BOOL isOn;
@property (nonatomic, assign) NSInteger channel;
@property (nonatomic, assign) NSInteger preCh;

@end

@implementation MultifunctionTVControl

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
    self.preCh = self.channel;
}

- (void)preChannel
{
    self.channel--;
    [self.systemImp setChannel:self.channel];
    self.preCh = self.channel;
}

- (void)back
{
    [self.systemImp setChannel:self.preCh];
}

- (void)channel:(NSInteger)ch
{
    self.preCh = ch;
    self.channel = ch;
    [self.systemImp setChannel:self.channel];
}

@end
