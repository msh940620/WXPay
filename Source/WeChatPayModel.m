//
//  WeChatPayModel.m
//  OKWuYou
//
//  Created by apple on 15/12/31.
//  Copyright © 2015年 okwuyou. All rights reserved.
//

#import "WeChatPayModel.h"

@implementation WeChatPayModel

//  封装对象
- (id)initWithDic:(NSDictionary *)dic{
    if (self = [super init]) {
        self.appID = dic[@"appid"];
        self.noncestr = dic[@"noncestr"];
        self.package = dic[@"packageValue"];
        self.partnerID = dic[@"partnerid"];
        self.prepayID = dic[@"prepayid"];
        self.sign = dic[@"sign"];
        self.timestamp = dic[@"timestamp"];
    }
    return self;
}
@end
