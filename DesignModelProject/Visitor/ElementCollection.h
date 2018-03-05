//
//  ElementCollection.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/5.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ElementProtocol;

@interface ElementCollection : NSObject

/**
 *  添加元素
 *
 *  @param element 元素
 *  @param key     元素的键值
 */
- (void)addElement:(id <ElementProtocol>)element withKey:(NSString *)key;

/**
 *  获取所有元素的键值
 *
 *  @return 所有元素的键值
 */
- (NSArray *)allKeys;

/**
 *  根据元素键值获取元素
 *
 *  @param key 元素的键值
 *
 *  @return 元素
 */
- (id <ElementProtocol>)elementWithKey:(NSString *)key;

@end
