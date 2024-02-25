//
//  EmployeeList.h
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Department.h"
NS_ASSUME_NONNULL_BEGIN

@interface EmployeeList : NSObject

@property (nonatomic, strong) NSMutableArray <Employee *>*list;

- (void)accept:(Department *)handler;

@end

NS_ASSUME_NONNULL_END
