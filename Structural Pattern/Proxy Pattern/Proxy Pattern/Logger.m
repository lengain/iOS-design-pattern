//
//  Logger.m
//  Proxy Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "Logger.h"

@implementation Logger

- (void)log:(NSString *)userId {
    NSLog(@"更新数据库,用户%@查询次数+1", userId);
}


@end
