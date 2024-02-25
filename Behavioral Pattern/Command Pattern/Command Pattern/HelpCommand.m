//
//  HelpCommand.m
//  Command Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "HelpCommand.h"

@implementation HelpCommand

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.helpHandler = [[HelpHandler alloc] init];
    }
    return self;
}

- (void)execute {
    [self.helpHandler display];
}

@end


@implementation WindowCommand

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.windowHandler = [[WindowHandler alloc] init];
    }
    return self;
}

- (void)execute {
    [self.windowHandler minimize];
}

@end
