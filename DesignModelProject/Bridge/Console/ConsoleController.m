//
//  ConsoleController.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/5.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "ConsoleController.h"

@implementation ConsoleController

- (void)setCommand:(ConsoleCommand)command
{
    [_emulator loadInstructionsForCommand:command];
    [_emulator executeInstructions];
}

@end
