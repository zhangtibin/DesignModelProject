//
//  FWWebSiteFactory.m
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/6.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "FWWebSiteFactory.h"

#import "FWConcreteWebSite.h"

@implementation FWWebSiteFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _flyweights = [NSDictionary dictionary];
    }
    return self;
}

- (void)use:(FWUser *)user
{
    
}

- (NSInteger)getWebSiteCount
{
    return  self.flyweights.count;
}

- (id<WebSiteProtocol>)getWebSiteCategory:(NSString *)webKey
{
    __block id<WebSiteProtocol> webSet = nil;
    
    [self.flyweights enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        //
        if ([webKey isEqualToString:key]) {
            webSet = obj;
            *stop = YES;
        }
    }];
    
    if (webSet == nil) {
        FWConcreteWebSite *concreteWebSite = [[FWConcreteWebSite alloc]init];
        concreteWebSite.webName = webKey;
        webSet = concreteWebSite;
        
        NSMutableDictionary *mutableDic = [NSMutableDictionary dictionaryWithDictionary:self.flyweights];
        [mutableDic setObject:concreteWebSite forKey:webKey];
        self.flyweights = mutableDic;
    }
    
    return webSet;
}

@end
