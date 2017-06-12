//
//  FinanceDepartment.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 财务部
 */
@interface FinanceDepartment : NSObject

/**
 现金支付
 */
- (void)cashPayment;

/**
 申请贷款

 @return return value description
 */
- (BOOL)applyLoan;

/**
 贷款审核

 @return return value description
 */
- (BOOL)auditLoan;

/**
 放款
 */
- (BOOL)getLoan;

@end
