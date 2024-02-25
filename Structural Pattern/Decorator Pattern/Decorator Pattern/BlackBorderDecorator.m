//
//  BlackBorderDecorator.m
//  Decorator Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import "BlackBorderDecorator.h"

@implementation BlackBorderDecorator

- (void)display {
    [self setBlackBorder];
    [super display];
}

- (void)setBlackBorder {
    NSLog(@"为构件增加黑色边框");
}

@end
