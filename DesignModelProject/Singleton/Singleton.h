//
//  Singleton.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

// "+" 表示类的方法，由类调用
+(Singleton *)sharedInstance;

@end
