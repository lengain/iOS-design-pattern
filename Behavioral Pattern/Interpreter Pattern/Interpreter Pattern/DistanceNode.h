//
//  DistanceNode.h
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "AbstractNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface DistanceNode : NSObject <AbstractNode>
@property (nonatomic, strong) NSString *distance;

@end

NS_ASSUME_NONNULL_END
