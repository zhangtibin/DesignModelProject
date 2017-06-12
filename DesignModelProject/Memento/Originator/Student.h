//
//  Student.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/5.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Memo.h"

@interface Student : NSObject

@property (nonatomic, copy) NSString * sName;
@property (nonatomic, copy) NSString * sAddress;

- (Memo *)createMemo;
- (void)setMemo:(Memo *)memo;

- (void)display;

@end
