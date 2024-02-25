//
//  Actor.h
//  Builder Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Actor : NSObject

@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *sex;
@property (nonatomic, strong) NSString *face;
@property (nonatomic, strong) NSString *costume;
@property (nonatomic, strong) NSString *hairStyle;

@end

NS_ASSUME_NONNULL_END
