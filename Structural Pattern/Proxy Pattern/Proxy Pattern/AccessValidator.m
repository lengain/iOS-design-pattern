//
//  AccessValidator.m
//  Proxy Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "AccessValidator.h"

@implementation AccessValidator

+ (BOOL)validate:(NSString *)userId {
    if ([userId isEqualToString:@"杨过"]) {
        NSLog(@"登录成功");
        return YES;
    }else {
        NSLog(@"登录失败");
        return NO;
    }
    
}

@end
