//
//  ContentViewAdapter.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/9.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "ContentViewAdapter.h"

@implementation ContentViewAdapter

- (instancetype)initWithData:(id)data
{
    if (self = [super init]) {
        self.data = data;
    }
    return self;
}

- (UIImage *)image
{
    return nil;
}

- (NSString *)contentStr
{
    return nil;
}

@end
