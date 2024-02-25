//
//  ComponentDecorator.h
//  Decorator Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import <Foundation/Foundation.h>
#import "Component.h"

NS_ASSUME_NONNULL_BEGIN

@interface ComponentDecorator : NSObject <Component>

@property (nonatomic, strong) NSObject <Component> *component;

@end

NS_ASSUME_NONNULL_END
