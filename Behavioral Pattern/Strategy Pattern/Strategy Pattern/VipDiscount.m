//
//  VipDiscount.m
//  Strategy Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "VipDiscount.h"

@implementation VipDiscount

- (CGFloat)calculate:(CGFloat)price {
    NSLog(@"VIP票:");
    NSLog(@"增加积分!");
    return price * 0.5;
}

@end
