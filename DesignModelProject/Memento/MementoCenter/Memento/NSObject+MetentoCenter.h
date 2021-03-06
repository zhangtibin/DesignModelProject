//
//  NSObject+MetentoCenter.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/8.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MetentoCenter)

- (void)saveStateWithKey:(NSString *)key;

- (void)recoverFromStateWithKey:(NSString *)key;

@end
