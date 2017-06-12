//
//  CPU.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "CPU.h"

#import "MediatorBoard.h"

@implementation CPU

- (void)executeData:(NSMutableString *)data
{
    [data appendFormat:@"+经过CPU处理"];
    [[MediatorBoard sharedInstance] handleData:data dataSource:self];
}

@end
