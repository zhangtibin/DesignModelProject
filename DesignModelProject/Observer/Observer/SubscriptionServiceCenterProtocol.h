//
//  SubscriptionServiceCenterProtocol.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SubscriptionServiceCenterProtocol <NSObject>

@required

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber;

@end
