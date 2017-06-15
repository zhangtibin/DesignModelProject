//
//  PlaneB.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "PlaneB.h"

#import "AbstractRadarMediator.h"

@implementation PlaneB

- (void)noticeLocation
{
    [self.radarMediator noticeLocationToPlaneAWithDistance:self.distance];
}

@end
