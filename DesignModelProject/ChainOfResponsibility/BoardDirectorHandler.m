//
//  BoardDirectorHandler.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/7.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "BoardDirectorHandler.h"

@implementation BoardDirectorHandler

- (void)handlePurchaseApplication:(CGFloat)costAmount
{
    if (costAmount < 500000) {
        NSLog(@"花费金额:%.f  低于50万，不要来找我【董事会】", costAmount);
        return;
    }
    if (costAmount >= 500000) {
        NSLog(@"花费金额:%.f  高于50万，我【董事会】来处理", costAmount);
    }
}

@end
