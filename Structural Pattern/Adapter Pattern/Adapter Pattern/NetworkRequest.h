//
//  NetworkManager.h
//  Adapter Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkRequest : NSObject

+ (void)requestWithParameter:(NSDictionary *)parameter result:(void (^)( NSString * _Nullable error, NSData * _Nullable data))result;

@end

NS_ASSUME_NONNULL_END
