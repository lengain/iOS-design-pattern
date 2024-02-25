//
//  Stack.h
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Stack <__covariant ObjectType> : NSObject

- (void)push:(ObjectType)object;
- (ObjectType)pop;

@end

NS_ASSUME_NONNULL_END
