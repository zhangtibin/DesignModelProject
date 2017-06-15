//
//  WaiterFacade.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 接待人员（外观）
 */
@interface WaiterFacade : NSObject

/**
 现金买车
 */
- (void)buyCarWithCash;

/**
 贷款买车
 */
- (void)buyCarWithLoan;

@end
