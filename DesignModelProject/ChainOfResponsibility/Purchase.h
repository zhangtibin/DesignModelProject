//
//  Purchase.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/7.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 采购
 */
@protocol Purchase <NSObject>

- (void)handlePurchaseApplication:(CGFloat)costAmount;

@end
