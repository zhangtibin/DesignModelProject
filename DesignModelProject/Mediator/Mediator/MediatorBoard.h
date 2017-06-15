//
//  MediatorBoard.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MediatorBoard : NSObject

+ (instancetype)sharedInstance;

- (void)handleData:(NSMutableString *)data dataSource:(id)source;

@end
