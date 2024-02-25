//
//  Account.m
//  Template Method Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "Account.h"

@implementation Account

- (BOOL)validate:(NSString *)account password:(NSString *)password {
    if ([account isEqualToString:@"张无忌"] && [password isEqualToString:@"123456"]) {
        return YES;
    }else {
        return NO;
    }
}

- (void)calculateInterest {
    
}

- (void)display {
    NSLog(@"显示利息");
}

- (void)handle:(NSString *)account password:(NSString *)password {
    if (![self validate:account password:password]) {
        NSLog(@"账户或密码错误!");
        return;
    }
    [self calculateInterest];
    [self display];
}

@end
