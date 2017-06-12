//
//  MementoCenterProtocol.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/8.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoCenterProtocol <NSObject>

@required

/**
 当前状态

 @return return value description
 */
- (id)currentState;

/**
 recover from state从状态中恢复过来

 @param state state description
 */
- (void)recoverFromState:(id)state;

@end
