//
//  ItemModelAdapter.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/9.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "ItemModelAdapter.h"

#import "ItemModel.h"

@implementation ItemModelAdapter

- (instancetype)initWithData:(id)data
{
    if (self = [super init]) {
        self.data = data;
    }
    return self;
}

- (UIImage *)image
{
    ItemModel *model = self.data;
    return model.image;
}

- (NSString *)contentStr
{
    ItemModel *model = self.data;
    return model.contentStr;
}

@end
