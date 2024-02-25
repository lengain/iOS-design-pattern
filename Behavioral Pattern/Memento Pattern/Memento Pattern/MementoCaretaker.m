//
//  MementoCaretaker.m
//  Memento Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "MementoCaretaker.h"
#import "Stack.h"
@interface MementoCaretaker()

@property (nonatomic, strong) Stack *stack;

@end

@implementation MementoCaretaker

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.stack = [[Stack alloc] init];
    }
    return self;
}

- (ChessmanMemento *)pop {
    return [self.stack pop];
}

- (void)push:(ChessmanMemento *)memento {
    [self.stack push:memento];
}

@end
