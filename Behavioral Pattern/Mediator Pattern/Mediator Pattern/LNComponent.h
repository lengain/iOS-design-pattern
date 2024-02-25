//
//  LNComponent.h
//  Mediator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "Mediator.h"
NS_ASSUME_NONNULL_BEGIN

@interface LNComponent : NSObject

@property (nonatomic, strong) NSObject <Mediator> *mediator;

- (void)changed;
- (void)update;

@end

NS_ASSUME_NONNULL_END
