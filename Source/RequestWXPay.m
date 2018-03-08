//
//  RequestWXPay.m
//  schoolConnection
//
//  Created by 格式科技 on 16/9/5.
//  Copyright (c) 2016 杭州格式科技有限公司. All rights reserved.
//

#import "RequestWXPay.h"
#import "WXApiObject.h"
#import "WXApi.h"

@implementation RequestWXPay

- (void)weXinpayRequset:(NSDictionary *)request{

    if (![WXApi isWXAppInstalled]) {
        [[NSUserDefaults standardUserDefaults] setObject:@"Failed" forKey:@"payState"];
        return;
    }
    if(request != nil){
    //调起微信支付
    PayReq* req             = [[PayReq alloc] init];
    req.partnerId           = request[@"partnerid"];
    req.prepayId            = request[@"prepayid"];
    req.nonceStr            = request[@"noncestr"];
    req.timeStamp           = (UInt32) [request[@"timestamp"] doubleValue];;
    req.package             = request[@"package"];
    req.sign                = request[@"sign"];
    [WXApi sendReq:req];
    }else{
        [[NSUserDefaults standardUserDefaults] setObject:@"Failed" forKey:@"payState"];
    }
    //日志输出
    //        NSLog(@"微信支付日志输出/n: appid=%@\npartid=%@\nprepayid=%@\nnoncestr=%@\ntimestamp=%ld\npackage=%@\nsign=%@",[wechatDic objectForKey:@"appid"],req.partnerId,req.prepayId,req.nonceStr,(long)req.timeStamp,req.package,req.sign );
}

@end
