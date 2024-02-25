//
//  FBSettingWindow.h
//  Command Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "FunctionButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface FBSettingWindow : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSMutableArray <FunctionButton *>*functionButtons;

- (void)addFunctionButton:(FunctionButton *)fb;
- (void)removeFunctionButton:(FunctionButton *)fb;
- (void)display;

@end

NS_ASSUME_NONNULL_END
