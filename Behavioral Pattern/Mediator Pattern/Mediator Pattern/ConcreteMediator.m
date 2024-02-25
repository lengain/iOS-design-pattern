//
//  ConcreteMediator.m
//  Mediator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator

- (void)componentChanged:(LNComponent *)c {
    if (c == _addButton) {
        NSLog(@"单击增加按钮");
        [_list update];
        [_comboBox update];
        [_textBox update];
    }else if (c == _list) {
        NSLog(@"从列表框选择客户");
        [_comboBox update];
        [_textBox setText];
    }else if (c == _comboBox) {
        NSLog(@"从组合框选择客户");
        [_comboBox select];
        [_textBox setText];
    }
    
}

@end
