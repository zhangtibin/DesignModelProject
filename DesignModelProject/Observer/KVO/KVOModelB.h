//
//  KVOModelB.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

// b就是a的观察者，b观察a的变化，然后做出相应的反应
@interface KVOModelB : NSObject

@property (nonatomic, copy) NSString *name;

@end
