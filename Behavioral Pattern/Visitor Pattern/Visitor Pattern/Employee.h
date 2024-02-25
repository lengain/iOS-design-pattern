//
//  Employee.h
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "Department.h"
NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger workTime;

- (void)accept:(Department *)handler;

+ (instancetype)initInformation:(NSDictionary *)info;

@end

NS_ASSUME_NONNULL_END
