//
//  Account.m
//  State Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "Account.h"
#import "NormalState.h"
@implementation Account

+ (instancetype)accountWithOwner:(NSString *)owner balance:(CGFloat)balance {
    Account *a = [[Account alloc] init];
    a.balance = balance;
    a.owner = owner;
    a.state = [[NormalState alloc] init];
    a.state.acc = a;
    NSLog(@"%@开户, 初始金额为%.2f", owner, balance);
    NSLog(@"---------------------");
    return a;
}

- (void)deposit:(CGFloat)amount {
    NSLog(@"%@存款%.2f", _owner, amount);
    [_state deposit:amount];//调用状态对象
    NSLog(@"现在余额为%.2f", _balance);
    NSLog(@"现在的账户状态为%@",NSStringFromClass([_state class]));
    NSLog(@"---------------------");
}
- (void)withdraw:(CGFloat)amount {
    NSLog(@"%@取款%.2f", _owner, amount);
    [_state withdraw:amount];//调用状态对象
    NSLog(@"现在余额为%.2f", _balance);
    NSLog(@"现在的账户状态为%@",NSStringFromClass([_state class]));
    NSLog(@"---------------------");
}

- (void)computeInterest {
    [_state computeInterest];
}

@end
