//
//  EmployeeList.m
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "EmployeeList.h"

@implementation EmployeeList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.list = [NSMutableArray array];
    }
    return self;
}

- (void)accept:(Department *)handler {
    for (Employee *e in self.list) {
        [e accept:handler];
    }
}

@end
