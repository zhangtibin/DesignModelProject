//
//  ServiceDepartment.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 售后服务部
 */
@interface ServiceDepartment : NSObject

/**
 洗车服务
 */
- (void)carWash;

/**
 上牌服务
 */
- (void)applyPlate;

/**
 贴膜服务
 */
- (void)filming;

/**
 安装行车记录仪
 */
- (void)installTachograph;

@end
