//
//  DirectionNode.h
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "AbstractNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface DirectionNode : NSObject<AbstractNode>

@property (nonatomic, strong) NSString *direction;

@end

NS_ASSUME_NONNULL_END
