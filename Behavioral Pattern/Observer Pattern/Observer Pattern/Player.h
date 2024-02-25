//
//  Player.h
//  Observer Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

NS_ASSUME_NONNULL_BEGIN
@interface Player : NSObject <Observer>

+ (instancetype)playWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
