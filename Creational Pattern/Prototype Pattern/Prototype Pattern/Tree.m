//
//  Tree.m
//  Prototype Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import "Tree.h"

@implementation Tree

- (id)copyWithZone:(NSZone *)zone {
    Tree *new = [Tree allocWithZone:zone];
    new.height = self.height;
    new.color = [self.color copy];
    return new;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, color = %@, height = %f", [super description], self.color, self.height];
}

@end
