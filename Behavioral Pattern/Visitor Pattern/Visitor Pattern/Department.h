//
//  Department.h
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@class Employee;

@interface Department : NSObject

- (void)visit:(Employee *)employee;

@end

NS_ASSUME_NONNULL_END
