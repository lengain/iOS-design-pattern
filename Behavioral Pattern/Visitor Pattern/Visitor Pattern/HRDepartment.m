//
//  HRDepartment.m
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "HRDepartment.h"
#import "FulltimeEmployee.h"
#import "ParttimeEmployee.h"
@implementation HRDepartment

- (void)visit:(Employee *)employee {
    NSString *method = [NSString stringWithFormat:@"visit%@:", NSStringFromClass([employee class])];
    [self performSelector:NSSelectorFromString(method) withObject:employee];
}

- (void)visitFulltimeEmployee:(FulltimeEmployee *)employee {
    NSLog(@"正式员工%@, 实际工作时间为%zd小时",employee.name, employee.workTime);
    if (employee.workTime > 40) {
        NSLog(@"正式员工%@, 加班时间为%zd小时",employee.name, employee.workTime - 40);
    }else if (employee.workTime < 40) {
        NSLog(@"正式员工%@, 请假时间为%zd小时",employee.name, 40 - employee.workTime);

    }
}

- (void)visitParttimeEmployee:(ParttimeEmployee *)employee {
    NSLog(@"临时工%@,实际工作时间为%zd小时", employee.name, employee.workTime);
}

@end
