//
//  PrototypeJob.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/6.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "PrototypeJob.h"

@implementation PrototypeJob

- (id)copyWithZone:(NSZone *)zone
{
    PrototypeJob *job = [[PrototypeJob allocWithZone:zone] init];
    job.company = [self.company copy];
    job.years = self.years;
    job.position = [self.position copy];
    return job;
}

@end
