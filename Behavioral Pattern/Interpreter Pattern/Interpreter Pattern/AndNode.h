//
//  AndNode.h
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "AbstractNode.h"
NS_ASSUME_NONNULL_BEGIN

@interface AndNode : NSObject <AbstractNode>

@property (nonatomic, strong) NSObject <AbstractNode> *left;
@property (nonatomic, strong) NSObject <AbstractNode> *right;

@end

NS_ASSUME_NONNULL_END
