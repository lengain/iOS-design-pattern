//
//  Observer.h
//  Observer Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@protocol AllyControlCenter;
@protocol Observer <NSObject>

@property (nonatomic, strong) NSString *name;

- (void)help;
- (void)beAttacked:(NSObject <AllyControlCenter> *)acc;

@end

NS_ASSUME_NONNULL_END
