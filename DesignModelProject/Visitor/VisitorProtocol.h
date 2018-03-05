//
//  VisitorProtocol.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/5.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ElementProtocol.h"

@protocol VisitorProtocol <NSObject>

- (void)visitElement:(id <ElementProtocol>)element;

@end
