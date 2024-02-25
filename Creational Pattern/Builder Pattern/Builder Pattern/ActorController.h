//
//  ActorController.h
//  Builder Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import <Foundation/Foundation.h>
#import "ActorBuilder.h"
NS_ASSUME_NONNULL_BEGIN

@interface ActorController : NSObject

+ (Actor *)construct:(NSObject <ActorBuilder>*)ab;

@end

NS_ASSUME_NONNULL_END
