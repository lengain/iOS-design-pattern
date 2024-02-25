//
//  Account.h
//  State Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "AccountState.h"
NS_ASSUME_NONNULL_BEGIN

@interface Account : NSObject


@property (nonatomic, strong) NSObject <AccountState>* state;
@property (nonatomic, strong) NSString *owner;
@property (nonatomic, assign) CGFloat balance;

+ (instancetype)accountWithOwner:(NSString *)owner balance:(CGFloat)balance;
- (void)deposit:(CGFloat)amount;
- (void)withdraw:(CGFloat)amount;
- (void)computeInterest;

@end

NS_ASSUME_NONNULL_END
