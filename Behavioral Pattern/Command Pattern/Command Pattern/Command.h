//
//  Command.h
//  Command Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Command <NSObject>

- (void)execute;

@end

NS_ASSUME_NONNULL_END
