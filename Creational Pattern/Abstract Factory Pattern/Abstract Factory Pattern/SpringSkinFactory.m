//
//  SpringSkinFactory.m
//  Abstract Factory Pattern
//
//  Created by 童玉龙 on 2024/2/17.
//

#import "SpringSkinFactory.h"
#import "SpringButton.h"
#import "SpringTextField.h"
#import "SpringComboBox.h"
@implementation SpringSkinFactory

- (nonnull NSObject<Button> *)createButton { 
    return [[SpringButton alloc] init];
}

- (nonnull NSObject<ComboBox> *)createComboBox { 
    return [[SpringComboBox alloc] init];
}

- (nonnull NSObject<TextField> *)createTextField {
    return [[SpringTextField alloc] init];
}

@end
