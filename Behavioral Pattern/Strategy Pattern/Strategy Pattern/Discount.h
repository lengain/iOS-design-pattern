//
//  Discount.h
//  Strategy Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Discount <NSObject>

- (CGFloat)calculate:(CGFloat)price;

@end

NS_ASSUME_NONNULL_END
