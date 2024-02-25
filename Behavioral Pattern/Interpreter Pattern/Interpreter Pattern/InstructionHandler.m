//
//  InstructionHandler.m
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "InstructionHandler.h"
#import "Stack.h"
#import "AndNode.h"
#import "SentenceNode.h"
#import "DirectionNode.h"
#import "ActionNode.h"
#import "DistanceNode.h"
@implementation InstructionHandler

- (void)handle:(NSString *)instruction {
    NSObject <AbstractNode> *left;
    NSObject <AbstractNode> *direction, *action, *distance;
    Stack *stack = [[Stack alloc] init];
    NSArray *words = [instruction componentsSeparatedByString:@" "];
    for (NSInteger i = 0; i < words.count; i ++) {
        NSString *temp = words[i];
        if ([temp isEqualToString:@"and"]) {
            left = [stack pop];
            NSString *word1 = words[++i];
            direction = [DirectionNode new];
            [(DirectionNode *)direction setDirection:word1];
            
            NSString *word2 = words[++i];
            action = [ActionNode new];
            [(ActionNode *)action setAction:word2];
            
            NSString *word3 = words[++i];
            distance = [DistanceNode new];
            [(DistanceNode *)distance setDistance:word3];
            
            SentenceNode *sn = [SentenceNode new];
            sn.direction = direction;
            sn.action = action;
            sn.distance = distance;
            
            AndNode *and = [AndNode new];
            and.left = left;
            and.right = sn;
            [stack push:and];
            
        }else {
            NSString *word1 = words[i];
            direction = [DirectionNode new];
            [(DirectionNode *)direction setDirection:word1];
            
            NSString *word2 = words[++i];
            action = [ActionNode new];
            [(ActionNode *)action setAction:word2];
            
            NSString *word3 = words[++i];
            distance = [DistanceNode new];
            [(DistanceNode *)distance setDistance:word3];
            
            SentenceNode *sn = [SentenceNode new];
            sn.direction = direction;
            sn.action = action;
            sn.distance = distance;
            left = sn;
            [stack push:left];
        }
    }
    self.node = [stack pop];
}

- (NSString *)output {
    return [self.node interpret];
}

@end
