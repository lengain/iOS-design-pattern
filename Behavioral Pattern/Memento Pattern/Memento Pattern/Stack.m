//
//  Stack.m
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "Stack.h"

@interface Stack ()

@property (nonatomic, strong) NSMutableArray *container;

@end

@implementation Stack

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.container = [NSMutableArray array];
    }
    return self;
}

- (void)push:(id)object {
    [self.container insertObject:object atIndex:0];
}

- (id)pop {
    if (self.container.count) {
        id object = [self.container objectAtIndex:0];
        [self.container removeObject:object];
        return object;
    }
    return nil;
}

@end
