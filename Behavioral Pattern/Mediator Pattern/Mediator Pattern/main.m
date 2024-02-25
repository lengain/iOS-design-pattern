//
//  main.m
//  Mediator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "ConcreteMediator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ConcreteMediator *mediator = [[ConcreteMediator alloc] init];
        
        Button *addButton = [[Button alloc] init];
        addButton.mediator = mediator;
        List *list = [[List alloc] init];
        list.mediator = mediator;
        Combox *comboBox = [[Combox alloc] init];
        comboBox.mediator = mediator;
        TextBox *textBox = [[TextBox alloc] init];
        textBox.mediator = mediator;
        
        
        mediator.addButton = addButton;
        mediator.list = list;
        mediator.comboBox = comboBox;
        mediator.textBox = textBox;
        
        [addButton changed];
        NSLog(@"-----------------");
        [list changed];
    }
    return 0;
}
