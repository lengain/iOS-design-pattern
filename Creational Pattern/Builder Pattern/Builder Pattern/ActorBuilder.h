//
//  ActorBuilder.h
//  Builder Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import <Foundation/Foundation.h>
#import "Actor.h"
NS_ASSUME_NONNULL_BEGIN

@protocol ActorBuilder <NSObject>

- (void)bulidType:(Actor *)actor;
- (void)bulidSex:(Actor *)actor;
- (void)bulidFace:(Actor *)actor;
- (void)bulidCostume:(Actor *)actor;
- (void)bulidHairstyle:(Actor *)actor;

- (Actor *)createActor;

@end

NS_ASSUME_NONNULL_END
