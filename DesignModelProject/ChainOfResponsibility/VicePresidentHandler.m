//
//  VicePresidentHandler.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/7.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "VicePresidentHandler.h"

@implementation VicePresidentHandler

- (void)handlePurchaseApplication:(CGFloat)costAmount
{
    if (costAmount < 50000) {
        NSLog(@"花费金额:%.f  太少了，我【副董事长】不处理", costAmount);
        return;
    }
    if (costAmount < 100000) {
        NSLog(@"花费金额:%.f  在5~10万区间我【副董事长】可以处理", costAmount);
    }
    else {
        if (self.superior != nil) {
            NSLog(@"花费金额:%.f  超过10万，我【副董事长】无权处理，找上级", costAmount);
            [self.superior handlePurchaseApplication:costAmount];
        }
    }
}

@end
