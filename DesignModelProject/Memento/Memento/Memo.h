//
//  Memo.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/5.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Memo : NSObject
{
    NSString *_tempName;
    NSString *_tempAddress;
}

- (Memo *)initWithName:(NSString *)name address:(NSString *)address;

- (NSString *)getName;
- (NSString *)getAddress;

@end
