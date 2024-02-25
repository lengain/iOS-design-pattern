//
//  HelpCommand.h
//  Command Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "HelpHandler.h"
#import "WindowHandler.h"
NS_ASSUME_NONNULL_BEGIN

@interface HelpCommand : NSObject <Command>

@property (nonatomic, strong) HelpHandler *helpHandler;

@end

@interface WindowCommand : NSObject <Command>

@property (nonatomic, strong) WindowHandler *windowHandler;

@end

NS_ASSUME_NONNULL_END
