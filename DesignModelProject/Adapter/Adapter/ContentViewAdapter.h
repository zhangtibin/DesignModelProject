//
//  ContentViewAdapter.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/9.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ContentViewAdapterProtocol.h"

@interface ContentViewAdapter : NSObject<ContentViewAdapterProtocol>

@property (nonatomic, weak) id data;

/**
 *  与输入对象建立联系
 *
 *  @param data 输入的对象
 *
 *  @return 实例对象
 */
- (instancetype)initWithData:(id)data;

@end
