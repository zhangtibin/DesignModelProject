//
//  AbstractRadarMediator.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "AbstractRadarMediator.h"

#import "Plane.h"

@implementation AbstractRadarMediator

- (instancetype)initWithPlaneA:(Plane *)planeA planeB:(Plane *)planeB
{
    if (self = [super init]) {
        _planeA = planeA;
        _planeB = planeB;
    }
    return self;
}

- (void)noticeLocationToPlaneAWithDistance:(CGFloat)distance
{
    
}

- (void)noticeLocationToPlaneBWithDistance:(CGFloat)distance
{
    
}

@end
