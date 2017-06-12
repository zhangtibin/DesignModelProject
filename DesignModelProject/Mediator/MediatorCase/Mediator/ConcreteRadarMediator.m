//
//  ConcreteRadarMediator.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "ConcreteRadarMediator.h"

#import "PlaneA.h"
#import "PlaneB.h"

@implementation ConcreteRadarMediator

- (void)noticeLocationToPlaneAWithDistance:(CGFloat)distance
{
    self.planeA.otherPlaneDistance = distance;
}

- (void)noticeLocationToPlaneBWithDistance:(CGFloat)distance
{
    self.planeB.otherPlaneDistance = distance;
}

@end
