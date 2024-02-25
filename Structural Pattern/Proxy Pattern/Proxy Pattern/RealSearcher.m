//
//  RealSearcher.m
//  Proxy Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "RealSearcher.h"

@implementation RealSearcher

- (NSString *)doSearch:(NSString *)userId keyword:(NSString *)keyword {
    NSLog(@"用户:%@ 使用关键词%@ 查询商务信息", userId, keyword);
    return @"返回具体内容";
}

@end
