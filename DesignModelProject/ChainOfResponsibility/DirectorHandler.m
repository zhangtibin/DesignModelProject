//
//  DirectorHandler.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/7.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "DirectorHandler.h"

@implementation DirectorHandler

- (void)handlePurchaseApplication:(CGFloat)costAmount
{
    if (costAmount < 50000) {
        NSLog(@"花费金额:%.f  小于5万我【主任】可以直接处理", costAmount);
    }
    else {
        if (self.superior != nil) {
            NSLog(@"花费金额:%.f  超过5万的我【主任】无权处理，找上级", costAmount);
            [self.superior handlePurchaseApplication:costAmount];
        }
    }
}

@end
