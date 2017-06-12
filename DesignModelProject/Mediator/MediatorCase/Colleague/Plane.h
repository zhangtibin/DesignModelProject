//
//  Plane.h
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractRadarMediator;

@interface Plane : NSObject

@property (nonatomic, assign) CGFloat distance;//距离机场的距离
@property (nonatomic, assign) CGFloat otherPlaneDistance;//其他飞机的位置
@property (nonatomic, strong) AbstractRadarMediator *radarMediator;//保持雷达中介者的引用

- (void)noticeLocation;

@end
