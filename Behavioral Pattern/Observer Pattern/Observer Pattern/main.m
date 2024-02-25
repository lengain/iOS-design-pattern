//
//  main.m
//  Observer Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "ConcreteAllyControlCenter.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
         观察者模式总结
               观察者模式是一种使用频率非常高的设计模式，无论是移动应用、Web应用或者桌面应用，观察者模式几乎无处不在，它为实现对象之间的联动提供了一套完整的解决方案，凡是涉及到一对一或者一对多的对象交互场景都可以使用观察者模式。观察者模式广泛应用于各种编程语言的GUI事件处理的实现，在基于事件的XML解析技术（如SAX2）以及Web事件处理中也都使用了观察者模式。

               1.主要优点

               观察者模式的主要优点如下：

               (1) 观察者模式可以实现表示层和数据逻辑层的分离，定义了稳定的消息更新传递机制，并抽象了更新接口，使得可以有各种各样不同的表示层充当具体观察者角色。

               (2) 观察者模式在观察目标和观察者之间建立一个抽象的耦合。观察目标只需要维持一个抽象观察者的集合，无须了解其具体观察者。由于观察目标和观察者没有紧密地耦合在一起，因此它们可以属于不同的抽象化层次。

               (3) 观察者模式支持广播通信，观察目标会向所有已注册的观察者对象发送通知，简化了一对多系统设计的难度。

               (4) 观察者模式满足“开闭原则”的要求，增加新的具体观察者无须修改原有系统代码，在具体观察者与观察目标之间不存在关联关系的情况下，增加新的观察目标也很方便。

               2.主要缺点

               观察者模式的主要缺点如下：

               (1) 如果一个观察目标对象有很多直接和间接观察者，将所有的观察者都通知到会花费很多时间。

               (2) 如果在观察者和观察目标之间存在循环依赖，观察目标会触发它们之间进行循环调用，可能导致系统崩溃。

               (3) 观察者模式没有相应的机制让观察者知道所观察的目标对象是怎么发生变化的，而仅仅只是知道观察目标发生了变化。

               3.适用场景

               在以下情况下可以考虑使用观察者模式：

               (1) 一个抽象模型有两个方面，其中一个方面依赖于另一个方面，将这两个方面封装在独立的对象中使它们可以各自独立地改变和复用。

               (2) 一个对象的改变将导致一个或多个其他对象也发生改变，而并不知道具体有多少对象将发生改变，也不知道这些对象是谁。

               (3) 需要在系统中创建一个触发链，A对象的行为将影响B对象，B对象的行为将影响C对象……，可以使用观察者模式创建一种链式触发机制。
         ————————————————

                                     版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。
                                 
         原文链接：https://blog.csdn.net/lovelion/article/details/7720537
         */
        // insert code here...
        NSObject <AllyControlCenter> *acc = [[ConcreteAllyControlCenter alloc] init];
        acc.allyName = @"LGD";
        Player *play1 = [Player playWithName:@"剑圣"];
        [acc join:play1];
        [acc join:[Player playWithName:@"皇子"]];
        [acc join:[Player playWithName:@"流浪法师"]];
        [acc join:[Player playWithName:@"机器人"]];
        [acc join:[Player playWithName:@"薇恩"]];
        
        [play1 beAttacked:acc];
        
        
        //同样,iOS中 NSObject  - [addObserver: forKeyPath: options: context:] 也是观察者模式的应用
    }
    return 0;
}
