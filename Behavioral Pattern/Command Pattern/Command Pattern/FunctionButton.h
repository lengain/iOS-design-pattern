//
//  FunctionButton.h
//  Command Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "Command.h"
NS_ASSUME_NONNULL_BEGIN

@interface FunctionButton : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSObject <Command> *command;

- (void)onClick;

@end

NS_ASSUME_NONNULL_END
