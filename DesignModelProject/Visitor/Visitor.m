//
//  Visitor.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/5.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "Visitor.h"

@interface Visitor ()

@property (nonatomic, weak) ElementA *elementA;
@property (nonatomic, weak) ElementB *elementB;

@end

@implementation Visitor

- (void)visitElementA:(ElementA *)elementA {
    
    self.elementA = elementA;
    
    [elementA operation];
    [elementA elementASpecialOperationA];
}

- (void)visitElementB:(ElementB *)elementB {
    
    self.elementB = elementB;
    
    [elementB operation];
    [elementB elementBSpecialOperationB];
}

- (void)visitElement:(id <ElementProtocol>)element {
    
    if ([element isMemberOfClass:[ElementA class]]) {
        
        [self visitElementA:element];
        
    } else if ([element isMemberOfClass:[ElementB class]]) {
        
        [self visitElementB:element];
    }
}

@end
