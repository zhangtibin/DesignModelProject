//
//  CDDriver.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "CDDriver.h"

#import "MediatorBoard.h"

@implementation CDDriver

- (void)readCD
{
    NSString *data = @"BBC地球探索之旅";
    NSMutableString *mStr = [[NSMutableString alloc] initWithString:data];
    [[MediatorBoard sharedInstance] handleData:mStr dataSource:self];
}

@end
