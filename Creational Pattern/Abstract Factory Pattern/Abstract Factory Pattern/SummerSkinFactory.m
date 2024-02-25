//
//  SummerSkinFactory.m
//  Abstract Factory Pattern
//
//  Created by 童玉龙 on 2024/2/17.
//

#import "SummerSkinFactory.h"
#import "SummerButton.h"
#import "SummerComboBox.h"
#import "SummerTextField.h"
@implementation SummerSkinFactory

- (nonnull NSObject<Button> *)createButton {
    return [[SummerButton alloc] init];
}

- (nonnull NSObject<ComboBox> *)createComboBox {
    return [[SummerComboBox alloc] init];
}

- (nonnull NSObject<TextField> *)createTextField {
    return [[SummerTextField alloc] init];
}

@end
