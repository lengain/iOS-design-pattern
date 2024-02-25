//
//  AccessValidator.h
//  Proxy Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AccessValidator : NSObject



+ (BOOL)validate:(NSString *)userId;

@end

NS_ASSUME_NONNULL_END
