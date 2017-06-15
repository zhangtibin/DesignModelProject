//
//  ConcreteRadarMediator.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "AbstractRadarMediator.h"

@interface ConcreteRadarMediator : AbstractRadarMediator

- (void)noticeLocationToPlaneAWithDistance:(CGFloat)distance;
- (void)noticeLocationToPlaneBWithDistance:(CGFloat)distance;

@end
