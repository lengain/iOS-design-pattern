//
//  RequestAdpter.m
//  Adapter Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import "RequestAdpter.h"
#import "NetworkRequest.h"
#import "RequestInfomation.h"
@implementation RequestAdpter

+ (void)getRequestResult:(void (^)(NSString * _Nullable, NSData * _Nullable))result {
    [NetworkRequest requestWithParameter:[RequestInfomation generateParameter] result:result];
}


@end
