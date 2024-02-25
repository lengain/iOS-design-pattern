//
//  ChildrenDiscount.m
//  Strategy Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "ChildrenDiscount.h"

@implementation ChildrenDiscount

- (CGFloat)calculate:(CGFloat)price {
    NSLog(@"儿童票:");
    return price - 10;
}

@end
