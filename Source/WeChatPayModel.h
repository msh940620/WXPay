//
//  WeChatPayModel.h
//  OKWuYou
//
//  Created by apple on 15/12/31.
//  Copyright © 2015年 okwuyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeChatPayModel : NSObject
//
@property (strong, nonatomic) NSString *appID;
//
@property (strong, nonatomic) NSString *noncestr;
//
@property (strong, nonatomic) NSString *package;
//
@property (strong, nonatomic) NSString *partnerID;
//
@property (strong, nonatomic) NSString *prepayID;
//
@property (strong, nonatomic) NSString *sign;
//
@property (strong, nonatomic) NSString *timestamp;

//  封装对象
- (id)initWithDic:(NSDictionary *)dic;
@end
