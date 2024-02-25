//
//  Mediator.h
//  Mediator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class LNComponent;
@protocol Mediator <NSObject>

- (void)componentChanged:(LNComponent *)c;

@end

NS_ASSUME_NONNULL_END
