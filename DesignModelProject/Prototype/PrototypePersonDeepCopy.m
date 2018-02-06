//
//  PrototypePersonDeepCopy.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/6.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "PrototypePersonDeepCopy.h"

@implementation PrototypePersonDeepCopy

- (id)copyWithZone:(NSZone *)zone
{
    PrototypePerson *person = [[PrototypePerson allocWithZone:zone] init];
    person.name = [self.name copy];
    person.age = self.age;
    person.gender = self.gender;
    person.height = self.height;
    person.job = [self.job copy];
    return person;
}

@end
