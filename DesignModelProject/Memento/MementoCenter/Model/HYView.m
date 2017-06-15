//
//  HYView.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/8.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "HYView.h"

@implementation HYView

- (id)currentState
{
    return @{
             @"frame":NSStringFromCGRect(self.frame)
             };
}

- (void)recoverFromState:(id)state
{
    NSDictionary *dict = state;
    self.frame = CGRectFromString(dict[@"frame"]);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
