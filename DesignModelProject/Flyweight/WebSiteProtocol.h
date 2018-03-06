//
//  WebSiteProtocol.h
//  DesignModelProject
//
//  Created by 张体宾 on 2018/3/6.
//  Copyright © 2018年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FWUser.h"

@protocol WebSiteProtocol <NSObject>

- (void)use:(FWUser *)user;

@end
