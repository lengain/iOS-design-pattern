//
//  SkinFactory.h
//  Abstract Factory Pattern
//
//  Created by 童玉龙 on 2024/2/17.
//

#import <Foundation/Foundation.h>
#import "Button.h"
#import "TextField.h"
#import "ComboBox.h"
NS_ASSUME_NONNULL_BEGIN

@protocol SkinFactory <NSObject>

- (NSObject <Button> *)createButton;
- (NSObject <TextField> *)createTextField;
- (NSObject <ComboBox> *)createComboBox;

@end

NS_ASSUME_NONNULL_END
