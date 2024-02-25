//
//  ActionNode.h
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "AbstractNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface ActionNode : NSObject<AbstractNode>

@property (nonatomic, strong) NSString *action;

@end

NS_ASSUME_NONNULL_END
