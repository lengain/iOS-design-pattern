//
//  NetworkManager.m
//  Adapter Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import "NetworkRequest.h"

@implementation NetworkRequest

+ (void)requestWithParameter:(NSDictionary *)parameter result:(void (^)(NSString *error, NSData *data))result {
    //根据参数发起请求
    //parameter...
    //返回结果
    result(nil, [@"Success" dataUsingEncoding:NSUTF8StringEncoding]);
}

@end
