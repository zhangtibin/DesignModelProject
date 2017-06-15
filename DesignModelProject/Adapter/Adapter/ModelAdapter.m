//
//  ModelAdapter.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/9.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "ModelAdapter.h"

#import "ItemModel.h"
#import "ContentModel.h"

@implementation ModelAdapter

- (instancetype)initWithData:(id)data
{
    if (self = [super init]) {
        self.data = data;
    }
    return self;
}

- (UIImage *)image
{
    if ([self.data isMemberOfClass:[ContentModel class]]) {
        ContentModel *model = self.data;
        return [UIImage imageNamed:model.imageName];
    }
    else {
        ItemModel *model = self.data;
        return model.image;
    }
}

- (NSString *)contentStr
{
    if ([self.data isMemberOfClass:[ContentModel class]]) {
        ContentModel *model = self.data;
        return model.contentStr;
    }
    else {
        ItemModel *model = self.data;
        return model.contentStr;
    }
}

@end
