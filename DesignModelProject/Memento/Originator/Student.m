//
//  Student.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/5.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "Student.h"

@implementation Student

- (Memo *)createMemo
{
    return [[Memo alloc] initWithName:_sName address:_sAddress];
}

- (void)setMemo:(Memo *)memo
{
    _sName = [memo getName];
    _sAddress = [memo getAddress];
}

- (void)display
{
    NSLog(@"State is name:%@;address:%@",_sName,_sAddress);
}

@end
