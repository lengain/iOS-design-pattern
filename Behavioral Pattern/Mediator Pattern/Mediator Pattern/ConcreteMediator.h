//
//  ConcreteMediator.h
//  Mediator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "Mediator.h"
#import "Button.h"
#import "List.h"
#import "Combox.h"
#import "TextBox.h"
NS_ASSUME_NONNULL_BEGIN

@interface ConcreteMediator : NSObject <Mediator>

@property (nonatomic, strong) Button *addButton;
@property (nonatomic, strong) List *list;
@property (nonatomic, strong) TextBox *textBox;
@property (nonatomic, strong) Combox *comboBox;


@end

NS_ASSUME_NONNULL_END
