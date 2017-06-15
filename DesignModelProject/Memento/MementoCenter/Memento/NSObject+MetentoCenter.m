//
//  NSObject+MetentoCenter.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/8.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "NSObject+MetentoCenter.h"

#import "MementoCenterProtocol.h"
#import "MetentoCenter.h"

@implementation NSObject (MetentoCenter)

- (void)saveStateWithKey:(NSString *)key
{
    id <MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
    if ([obj respondsToSelector:@selector(currentState)]) {
        [MetentoCenter saveMementoObject:obj withKey:key];
    }
}

- (void)recoverFromStateWithKey:(NSString *)key
{
    id state = [MetentoCenter mementoObjectWithKey:key];
    id <MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
    if ([obj respondsToSelector:@selector(recoverFromState:)]) {
        [obj recoverFromState:state];
    }
}

@end
