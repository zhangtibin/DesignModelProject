//
//  SalesDepartment.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Class 描述：销售部
 */
@interface SalesDepartment : NSObject

/**
 提车
 */
- (void)provideCar;

/**
 车贴膜
 */
- (void)carFilm;

/**
 行车记录仪
 */
- (void)tachograph;

/**
 发动机护板
 */
- (void)engineGuard;

/**
 脚垫
 */
- (void)mat;

@end
