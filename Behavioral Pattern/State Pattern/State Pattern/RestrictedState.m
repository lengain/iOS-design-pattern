//
//  RestrictedState.m
//  State Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "RestrictedState.h"
#import "Account.h"
#import "NormalState.h"
#import "OverdraftState.h"
@implementation RestrictedState

- (void)computeInterest {
    NSLog(@"计算利息");
}

- (void)deposit:(CGFloat)amount {
    self.acc.balance += amount;
    [self stateCheck];
}

- (void)stateCheck {
    Account *acc = self.acc;
    if (acc.balance > 0) {
        acc.state = [[NormalState alloc] init];
        acc.state.acc = acc;
    }else if (acc.balance > -2000) {
        acc.state = [[OverdraftState alloc] init];
        acc.state.acc = acc;
    }
}

- (void)withdraw:(CGFloat)amount {
    NSLog(@"账号受限,取款失败");
}


@synthesize acc;

- (void)dealloc {
    NSLog(@"%@状态失去", NSStringFromClass([self class]));
}

@end
