//
//  PrototypePerson.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/6.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PrototypeJob.h"

typedef NS_ENUM(NSUInteger, PrototypeGender) {
    PrototypeGenderMale,
    PrototypeGenderFemale,
};

@interface PrototypePerson : NSObject <NSCopying>

@property (nonatomic, copy) NSString *name;//姓名
@property (nonatomic, assign) PrototypeGender gender;//性别
@property (nonatomic, assign) NSUInteger age;//年龄
@property (nonatomic, assign) CGFloat height;//身高

@property (nonatomic, strong) PrototypeJob *job;//工作信息

@end
