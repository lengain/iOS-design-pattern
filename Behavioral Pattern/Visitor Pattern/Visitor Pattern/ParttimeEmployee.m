//
//  ParttimeEmployee.m
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "ParttimeEmployee.h"

@implementation ParttimeEmployee

+ (instancetype)initInformation:(NSDictionary *)info {
    ParttimeEmployee *e = [[ParttimeEmployee alloc] init];
    e.name = info[@"name"];
    e.hourWage = [info[@"hourWage"] floatValue];
    e.workTime = [info[@"workTime"] integerValue];
    return e;
}


@end
