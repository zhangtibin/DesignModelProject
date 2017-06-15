//
//  ConsoleEmulator.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/5.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Class 描述：控制器仿真器
 */
@interface ConsoleEmulator : NSObject
{
    
}

// 从抽象类重载行为
- (void)loadInstructionsForCommand:(ConsoleCommand)command;

- (void)executeInstructions;

// 其他行为和属性

@end
