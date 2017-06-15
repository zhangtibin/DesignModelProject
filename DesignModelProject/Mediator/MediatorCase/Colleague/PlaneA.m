//
//  PlaneA.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "PlaneA.h"

#import "AbstractRadarMediator.h"

@implementation PlaneA

- (void)noticeLocation
{
    [self.radarMediator noticeLocationToPlaneBWithDistance:self.distance];
}

@end
