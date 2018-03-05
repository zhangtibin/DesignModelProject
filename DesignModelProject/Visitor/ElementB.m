//
//  ElementB.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/5.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "ElementB.h"

#import "VisitorProtocol.h"

@implementation ElementB

- (void)accept:(id <VisitorProtocol>)visitor {
    
    [visitor visitElement:self];
}

- (void)operation {
    
    NSLog(@"Element_B operation start.");
}

- (void)elementBSpecialOperationB {
    
    NSLog(@"Element_B special operation.");
}

@end
