//
//  CustomerA.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "CustomerA.h"

@implementation CustomerA

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber
{
    NSLog(@"\nHello，My Name is : %@ \n %@--%@",[self class],message,subscriptionNumber);
}

@end

// 另外，当"书刊发行机构"有了新的书刊的时候，根据需求，创建一个书刊号，然后如果有新的用户需要订阅新的书刊，根据需求，创建一个用户订阅书刊的信息对象。

//　　一个书刊对应每个月会在某一天发布新书，当"书刊发行机构"的现有的书刊有了新的书发布的时候，就会发消息通知订阅这个书刊的用户，然后用户会做出及时的响应回馈。

//　　按照观察者模式，被观察者发送消息，观察者收到消息就需要立马做出响应。这个和我们之前用的Cocoa框架已经实现的KVO和通知的模式是一样的。

//　　为了实现这样的模式，我们还需要给用户信息对象用一个协议来约束它：

