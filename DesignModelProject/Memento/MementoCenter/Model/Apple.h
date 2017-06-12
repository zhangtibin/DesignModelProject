//
//  Apple.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/8.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MementoCenterProtocol.h"

@interface Apple : NSObject <MementoCenterProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber * age;

- (NSString *)description;
@end
