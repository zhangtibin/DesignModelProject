//
//  ElementA.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/5.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "ElementA.h"

#import "VisitorProtocol.h"

@implementation ElementA

- (void)accept:(id <VisitorProtocol>)visitor {
    
    [visitor visitElement:self];
}

- (void)operation {
    
    NSLog(@"Element_A operation start.");
}

- (void)elementASpecialOperationA {
    
    NSLog(@"Element_A special operation.");
}

@end
