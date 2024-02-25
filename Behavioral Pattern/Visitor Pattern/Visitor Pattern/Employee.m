//
//  Employee.m
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "Employee.h"

@implementation Employee

+ (instancetype)initInformation:(NSDictionary *)info {
    return [[Employee alloc] init];
}

- (void)accept:(Department *)handler {
    [handler visit:self];
}

@end
