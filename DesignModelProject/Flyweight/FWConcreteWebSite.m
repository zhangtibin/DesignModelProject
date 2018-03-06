//
//  FWConcreteWebSite.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/6.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "FWConcreteWebSite.h"

@implementation FWConcreteWebSite

- (void)use:(FWUser *)user
{
    NSLog(@"website category is:%@ userName is:%@ address is:%@",self.webName,user.userName,user.userBirthday);
}

@end
