//
//  ContentView.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/9.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ContentViewAdapterProtocol.h"

@interface ContentView : UIView

@property (nonatomic, strong) UIImage *image;

@property (nonatomic, copy) NSString *contentStr;

/**
 *  添加符合ContentViewAdapterProtocol协议的数据类
 */
- (void)loadData:(id<ContentViewAdapterProtocol>)data;

@end
