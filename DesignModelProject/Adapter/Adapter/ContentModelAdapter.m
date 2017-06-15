//
//  ContentModelAdapter.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/9.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "ContentModelAdapter.h"

#import "ContentModel.h"

@implementation ContentModelAdapter

- (instancetype)initWithData:(id)data
{
    if (self = [super init]) {
        self.data = data;
    }
    return self;
}

- (UIImage *)image
{
    ContentModel *model = self.data;
    return [UIImage imageNamed:model.imageName];
}

- (NSString *)contentStr
{
    ContentModel *model = self.data;
    return model.contentStr;
}

@end
