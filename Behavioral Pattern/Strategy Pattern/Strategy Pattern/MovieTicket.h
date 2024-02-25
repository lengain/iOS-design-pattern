//
//  MovieTicket.h
//  Strategy Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "Discount.h"
NS_ASSUME_NONNULL_BEGIN

@interface MovieTicket : NSObject

@property (nonatomic, assign) CGFloat price;
@property (nonatomic, strong) NSObject <Discount> *discount;

- (CGFloat)calculatePrice;

@end

NS_ASSUME_NONNULL_END
