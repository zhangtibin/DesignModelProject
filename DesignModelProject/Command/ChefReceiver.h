//
//  ChefReceiver.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/11.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 厨师：命令的接收者
 */
@interface ChefReceiver : NSObject

/**
 制作三明治
 */
- (void)cookSandwich;

/**
 制作汉堡
 */
- (void)cookHamburg;

/**
 制作牛排
 */
- (void)cookSteak;

@end
