//
//  Actor.m
//  Builder Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import "Actor.h"

@implementation Actor

- (NSString *)description {
    return [NSString stringWithFormat:@"%@的外观:%@, 性别:%@, 面容:%@, 发型:%@\n",self.type, self.costume, self.sex, self.face, self.hairStyle];
}

@end
