//
//  FunctionButton.m
//  Command Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "FunctionButton.h"

@implementation FunctionButton

- (void)onClick {
    NSLog(@"点击功能键");
    [self.command execute];
}

@end
