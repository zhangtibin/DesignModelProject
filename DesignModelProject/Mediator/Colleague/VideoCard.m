//
//  VideoCard.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/10.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "VideoCard.h"

@implementation VideoCard

- (void)executeData:(NSMutableString *)data
{
    [data appendString:@"+经过显卡处理"];
    NSLog(@"开始播放视频：%@", data);
}

@end
