//
//  FinanceDepartment.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "FinanceDepartment.h"

@implementation FinanceDepartment

#pragma mark - 现金付款
- (void)cashPayment
{
    NSLog(@"现金支付完成");
}

#pragma mark - 申请贷款
- (BOOL)applyLoan
{
    NSLog(@"申请贷款...");
    if ([self auditLoan]) {
        return [self getLoan];
    } else {
        return NO;
    }
}

#pragma mark - 审核贷款
- (BOOL)auditLoan
{
    NSLog(@"审核贷款...");
    return YES;
}

#pragma mark - 放款
- (BOOL)getLoan
{
    NSLog(@"放款！");
    return YES;
}

@end
