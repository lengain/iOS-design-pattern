//
//  InstructionHandler.h
//  Interpreter Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "AbstractNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface InstructionHandler : NSObject

@property (nonatomic, strong) NSString *instruction;
@property (nonatomic, strong) NSObject <AbstractNode>*node;

- (void)handle:(NSString *)instruction;
- (NSString *)output;

@end

NS_ASSUME_NONNULL_END
