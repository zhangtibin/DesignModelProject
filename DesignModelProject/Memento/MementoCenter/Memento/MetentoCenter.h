//
//  MetentoCenter.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/8.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MementoCenterProtocol.h"

@interface MetentoCenter : NSObject

+ (void)saveMementoObject:(id<MementoCenterProtocol>)obect withKey:(NSString *)key;

+ (id)mementoObjectWithKey:(NSString *)key;

+ (void)removeObjectWithKey:(NSString *)key;

@end
