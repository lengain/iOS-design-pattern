//
//  AccountState.h
//  State Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Account;
@protocol AccountState <NSObject>

@property (nonatomic, weak) Account *acc;
- (void)deposit:(CGFloat)amount;
- (void)withdraw:(CGFloat)amount;
- (void)computeInterest;
- (void)stateCheck;

@end

NS_ASSUME_NONNULL_END
