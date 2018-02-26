//
//  AbstractionSystem.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/2/26.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AbstractionSystem <NSObject>

- (void)on;
- (void)off;
- (void)setChannel:(NSInteger)ch;
- (void)setVolume:(NSInteger)vol;

@end
