//
//  LNComponent.m
//  Mediator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "LNComponent.h"

@implementation LNComponent

- (void)changed {
    [_mediator componentChanged:self];
}

- (void)update {}

@end
