//
//  OverdraftState.h
//  State Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "AccountState.h"
NS_ASSUME_NONNULL_BEGIN
/// 透支状态
@interface OverdraftState : NSObject <AccountState>

@end

NS_ASSUME_NONNULL_END
