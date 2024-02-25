//
//  StudentDiscount.m
//  Strategy Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "StudentDiscount.h"

@implementation StudentDiscount

- (CGFloat)calculate:(CGFloat)price {
    NSLog(@"学生票:");
    return price * 0.8;
}

@end
