//
//  PrototypePersonShallowCopy.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/6.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "PrototypePersonShallowCopy.h"

@implementation PrototypePersonShallowCopy

- (id)copyWithZone:(NSZone *)zone
{
    PrototypePerson *person = [[PrototypePerson allocWithZone:zone] init];
    person.name = self.name;
    person.gender = self.gender;
    person.age = self.age;
    person.height = self.height;
    person.job = self.job;
    return person;
}

@end
