//
//  ActionNode.m
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "ActionNode.h"

@implementation ActionNode

- (NSString *)interpret {
    if ([self.action.lowercaseString isEqualToString:@"move"]) {
        return @"移动";
    }else if ([self.action.lowercaseString isEqualToString:@"run"]) {
        return @"跑";
    }else {
        return @"无效指令";
    }
}

@end
