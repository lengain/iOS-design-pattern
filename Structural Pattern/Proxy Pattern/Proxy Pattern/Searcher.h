//
//  Searcher.h
//  Proxy Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Searcher <NSObject>

- (NSString *)doSearch:(NSString *)userId keyword:(NSString *)keyword;

@end

NS_ASSUME_NONNULL_END
