//
//  Command.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/11.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CommandProtocol.h"
#import "ChefReceiver.h"

@interface Command : NSObject <CommandProtocol>

@property (nonatomic, strong, readonly) ChefReceiver *receiver;

- (instancetype)initWithReceiver:(ChefReceiver *)chef;

@end
