//
//  ScrollBarDecorator.m
//  Decorator Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import "ScrollBarDecorator.h"

@implementation ScrollBarDecorator

- (void)display {
    [self setScrollBar];
    [super display];
}

- (void)setScrollBar {
    NSLog(@"为构件增加滚动条");
}

@end
