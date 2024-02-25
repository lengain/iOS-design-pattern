//
//  SentenceNode.m
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "SentenceNode.h"

@implementation SentenceNode

- (NSString *)interpret {
    return [NSString stringWithFormat:@"%@%@%@",[_direction interpret], [_action interpret], [_distance interpret]];
}

@end
