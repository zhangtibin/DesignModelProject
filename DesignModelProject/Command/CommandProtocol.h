//
//  CommandProtocol.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/11.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CommandProtocol <NSObject>

/**
 执行命令
 */
- (void)execute;

@end
