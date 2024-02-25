//
//  DirectionNode.m
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "DirectionNode.h"

@implementation DirectionNode

- (NSString *)interpret {
    if ([self.direction.lowercaseString isEqualToString:@"up"]) {
        return @"向上";
    }else if ([self.direction.lowercaseString isEqualToString:@"down"]) {
        return @"向下";
    }else if ([self.direction.lowercaseString isEqualToString:@"left"]) {
        return @"向左";
    }else if ([self.direction.lowercaseString isEqualToString:@"right"]) {
        return @"向右";
    }else {
        return @"无效指令";
    }
}

@end
