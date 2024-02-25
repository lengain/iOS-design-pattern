//
//  Account.h
//  Template Method Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Account : NSObject

- (BOOL)validate:(NSString *)account password:(NSString *)password;
- (void)calculateInterest;
- (void)display;

- (void)handle:(NSString *)account password:(NSString *)password;

@end

NS_ASSUME_NONNULL_END
