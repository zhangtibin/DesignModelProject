//
//  NSObject+Singleton.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  使用类别增加NSObject中的方法；
 */
@interface NSObject (Singleton)

+ (instancetype)sharedInstance;

@end
