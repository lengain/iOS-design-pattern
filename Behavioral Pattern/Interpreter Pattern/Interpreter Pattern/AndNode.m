//
//  AndNode.m
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "AndNode.h"

@implementation AndNode

- (nonnull NSString *)interpret { 
    return [NSString stringWithFormat:@"%@再%@",[_left interpret], [_right interpret]];
}

@end
