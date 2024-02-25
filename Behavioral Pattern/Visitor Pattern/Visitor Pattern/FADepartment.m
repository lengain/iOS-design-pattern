//
//  FADepartment.m
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "FADepartment.h"
#import "FulltimeEmployee.h"
#import "ParttimeEmployee.h"
@implementation FADepartment

- (void)visit:(Employee *)employee {
    NSString *method = [NSString stringWithFormat:@"visit%@:", NSStringFromClass([employee class])];
    [self performSelector:NSSelectorFromString(method) withObject:employee];
}

- (void)visitFulltimeEmployee:(FulltimeEmployee *)employee {
    CGFloat weekWage = 0;
    if (employee.workTime >= 40) {
        weekWage = employee.weeklyWage + (employee.workTime - 40) * 100;
    }else if (employee.workTime < 40) {
        weekWage = employee.weeklyWage - (40 - employee.workTime) * 80;
        if (weekWage < 0) {
            weekWage = 0;
        }
    }
    NSLog(@"正式员工%@,实际工资为:%.2f元",employee.name, weekWage);
}

- (void)visitParttimeEmployee:(ParttimeEmployee *)employee {
    NSLog(@"临时工%@,实际工资为:%.2f元", employee.name, employee.workTime * employee.hourWage);
}

@end
