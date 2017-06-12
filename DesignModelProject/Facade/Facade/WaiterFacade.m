//
//  WaiterFacade.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "WaiterFacade.h"

#import "FinanceDepartment.h"
#import "ServiceDepartment.h"
#import "SalesDepartment.h"

@implementation WaiterFacade
{
    FinanceDepartment *_financeDepart;//财务部门
    SalesDepartment *_salesDepart;//销售部门
    ServiceDepartment *_serviceDepart;//售后服务部门
}

- (instancetype)init
{
    if (self = [super init]) {
        _financeDepart = [[FinanceDepartment alloc] init];
        _salesDepart = [[SalesDepartment alloc] init];
        _serviceDepart = [[ServiceDepartment alloc] init];
    }
    return self;
}

- (void)buyCarWithCash
{
    // 现金支付
    [_financeDepart cashPayment];
    
    // 赠送礼品
    [self gift];
    
    // 提供服务
    [self service];
}

- (void)buyCarWithLoan
{
    BOOL isSuccess = [_financeDepart applyLoan];
    
    // 如果贷款审批下来，则提车，赠送礼品和提供服务
    if (isSuccess) {
        [_salesDepart provideCar];
        [self gift];
        [self service];
    } else {
        NSLog(@"贷款审批未通过！");
    }
}

- (void)gift
{
    NSLog(@"赠品有：");
    [_salesDepart carFilm];
    [_salesDepart tachograph];
    [_salesDepart engineGuard];
    [_salesDepart mat];
}

- (void)service
{
    NSLog(@"售后服务：");
    [_serviceDepart carWash];
    [_serviceDepart applyPlate];
    [_serviceDepart filming];
    [_serviceDepart installTachograph];
}

@end
