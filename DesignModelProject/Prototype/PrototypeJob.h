//
//  PrototypeJob.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/6.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrototypeJob : NSObject <NSCopying>

@property (nonatomic, strong) NSString *company;//公司
@property (nonatomic, assign) int years;//年限
@property (nonatomic, strong) NSString *position;//职位

@end
