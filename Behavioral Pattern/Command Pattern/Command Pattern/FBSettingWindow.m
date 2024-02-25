//
//  FBSettingWindow.m
//  Command Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "FBSettingWindow.h"

@implementation FBSettingWindow

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.functionButtons = [NSMutableArray array];
    }
    return self;
}

- (void)addFunctionButton:(FunctionButton *)fb {
    [_functionButtons addObject:fb];
}

- (void)removeFunctionButton:(FunctionButton *)fb {
    [_functionButtons removeObject:fb];
}

- (void)display {
    NSLog(@"显示窗口:%@", self.title);
    NSLog(@"显示功能键:");
    for (FunctionButton *fb in _functionButtons) {
        NSLog(@"%@", fb.name);
    }
    NSLog(@"------------------------------------");
}

@end
