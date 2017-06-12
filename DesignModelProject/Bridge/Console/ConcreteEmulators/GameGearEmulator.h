//
//  GameGearEmulator.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/5.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "ConsoleEmulator.h"

@interface GameGearEmulator : ConsoleEmulator
{
    
}

// overridden behaviors from the abstract class
- (void)loadInstructionsForCommand:(ConsoleCommand)command;
- (void)executeInstructions;

// other behaviors and properties.

@end
