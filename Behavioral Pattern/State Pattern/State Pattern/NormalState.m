//
//  NormalState.m
//  State Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "NormalState.h"
#import "Account.h"
#import "OverdraftState.h"
#import "RestrictedState.h"
@implementation NormalState

@synthesize acc;

- (void)computeInterest { 
    NSLog(@"正常状态, 无需支付利息");
}

- (void)deposit:(CGFloat)amount { 
    self.acc.balance += amount;
    [self stateCheck];
}

- (void)stateCheck {
    Account *acc = self.acc;
    if (acc.balance > -2000 && acc.balance <= 0) {
        acc.state = [[OverdraftState alloc] init];
        acc.state.acc = acc;
    }else if (acc.balance == -2000) {
        acc.state = [[RestrictedState alloc] init];
        acc.state.acc = acc;
    }else if (self.acc.balance < -2000) {
        NSLog(@"金额过低,操作受限");
    }
}

- (void)withdraw:(CGFloat)amount { 
    self.acc.balance -= amount;
    [self stateCheck];
}

- (void)dealloc {
    NSLog(@"%@状态失去", NSStringFromClass([self class]));
}

@end
