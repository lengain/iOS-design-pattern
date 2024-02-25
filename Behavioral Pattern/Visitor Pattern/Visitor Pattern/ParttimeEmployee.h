//
//  ParttimeEmployee.h
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface ParttimeEmployee : Employee

@property (nonatomic, assign) CGFloat hourWage;

@end

NS_ASSUME_NONNULL_END
