//
//  AbstractionTVControl.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/26.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AbstractionSystem.h"

@interface AbstractionTVControl : NSObject

@property (nonatomic, strong) id <AbstractionSystem>systemImp;

- (instancetype)initWithSystem:(id <AbstractionSystem>)system;

- (void)Onoff;
- (void)nextChannel;
- (void)preChannel;

@end
