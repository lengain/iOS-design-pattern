//
//  FulltimeEmployee.m
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "FulltimeEmployee.h"

@implementation FulltimeEmployee

+ (instancetype)initInformation:(NSDictionary *)info {
    FulltimeEmployee *e = [[FulltimeEmployee alloc] init];
    e.name = info[@"name"];
    e.weeklyWage = [info[@"weeklyWage"] floatValue];
    e.workTime = [info[@"workTime"] integerValue];
    return e;
}

@end
