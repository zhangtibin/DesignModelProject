//
//  FWUser.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/6.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FWUser : NSObject

//名称
@property (nonatomic,copy)NSString *userName;

// 生日
@property (nonatomic,copy)NSString *userBirthday;

// 年龄
@property (nonatomic,assign)NSInteger age;

@end
