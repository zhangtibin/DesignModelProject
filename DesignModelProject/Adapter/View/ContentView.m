//
//  ContentView.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/9.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView
{
    UIImageView *_imageView;
    UILabel *_contentLabel;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}

- (void)setUp
{
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [self addSubview:_imageView];
    
    _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.frame.size.height + 7, 0, self.frame.size.width - 7 - self.frame.size.height, self.frame.size.height)];
    [self addSubview:_contentLabel];
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    _imageView.image = image;
}

- (void)setContentStr:(NSString *)contentStr
{
    _contentStr = contentStr;
    _contentLabel.text = contentStr;
}

- (void)loadData:(id<ContentViewAdapterProtocol>)data
{
    self.image = [data image];
    self.contentStr = [data contentStr];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
