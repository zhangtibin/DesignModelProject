//
//  PresidentHandler.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/7.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "PresidentHandler.h"

@implementation PresidentHandler

- (void)handlePurchaseApplication:(CGFloat)costAmount
{
    if (costAmount < 100000) {
        NSLog(@"花费金额:%.f  低于10万的不要来找我【董事长】", costAmount);
        return;
    }
    if (costAmount < 500000) {
        NSLog(@"花费金额:%.f  在10~50万区间我【董事长】可以处理", costAmount);
    }
    else {
        if (self.superior != nil) {
            NSLog(@"花费金额:%.f  超过50万，我【董事长】无权处理，找上级", costAmount);
            [self.superior handlePurchaseApplication:costAmount];
        }
    }
}

@end
