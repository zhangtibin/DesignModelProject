//
//  AbstractRadarMediator.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Plane;

@interface AbstractRadarMediator : NSObject

@property (nonatomic, strong) Plane *planeA;
@property (nonatomic, strong) Plane *planeB;

- (instancetype)initWithPlaneA:(Plane *)planeA planeB:(Plane *)planeB;

- (void)noticeLocationToPlaneAWithDistance:(CGFloat)distance;
- (void)noticeLocationToPlaneBWithDistance:(CGFloat)distance;

@end
