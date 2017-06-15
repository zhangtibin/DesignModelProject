//
//  KVOModelA.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

// 对象a值改变的时候去通知对象b
@interface KVOModelA : NSObject

@property (nonatomic, copy) NSString *name;

@end
