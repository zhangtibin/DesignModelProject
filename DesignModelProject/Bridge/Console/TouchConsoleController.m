//
//  TouchConsoleController.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/5.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "TouchConsoleController.h"

@implementation TouchConsoleController

- (void)up
{
    [super setCommand:ConsoleCommandUp];
}

- (void)down
{
    [super setCommand:ConsoleCommandDown];
}

- (void)left
{
    [super setCommand:ConsoleCommandLeft];
}

- (void)right
{
    [super setCommand:ConsoleCommandRight];
}

- (void)select
{
    [super setCommand:ConsoleCommandSelect];
}

- (void)start
{
    [super setCommand:ConsoleCommandStart];
}

- (void)action1
{
    [super setCommand:ConsoleCommandAction1];
}

- (void)action2
{
    [super setCommand:ConsoleCommandAction2];
}

@end
