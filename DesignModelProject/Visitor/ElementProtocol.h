//
//  ElementProtocol.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/5.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VisitorProtocol;

@protocol ElementProtocol <NSObject>

/**
 *  接收访问者
 *
 *  @param visitor 访问者对象
 */
- (void)accept:(id <VisitorProtocol>)visitor;

/**
 *  元素公共的操作
 */
- (void)operation;

@end
