//
//  main.m
//  State Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "Account.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         状态模式总结
                状态模式将一个对象在不同状态下的不同行为封装在一个个状态类中，通过设置不同的状态对象可以让环境对象拥有不同的行为，而状态转换的细节对于客户端而言是透明的，方便了客户端的使用。在实际开发中，状态模式具有较高的使用频率，在工作流和游戏开发中状态模式都得到了广泛的应用，例如公文状态的转换、游戏中角色的升级等。

          

                1. 主要优点

                状态模式的主要优点如下：

                (1) 封装了状态的转换规则，在状态模式中可以将状态的转换代码封装在环境类或者具体状态类中，可以对状态转换代码进行集中管理，而不是分散在一个个业务方法中。

                (2) 将所有与某个状态有关的行为放到一个类中，只需要注入一个不同的状态对象即可使环境对象拥有不同的行为。

                (3) 允许状态转换逻辑与状态对象合成一体，而不是提供一个巨大的条件语句块，状态模式可以让我们避免使用庞大的条件语句来将业务方法和状态转换代码交织在一起。

                (4) 可以让多个环境对象共享一个状态对象，从而减少系统中对象的个数。

          

                2. 主要缺点

                状态模式的主要缺点如下：

                (1) 状态模式的使用必然会增加系统中类和对象的个数，导致系统运行开销增大。

                (2) 状态模式的结构与实现都较为复杂，如果使用不当将导致程序结构和代码的混乱，增加系统设计的难度。

                (3) 状态模式对“开闭原则”的支持并不太好，增加新的状态类需要修改那些负责状态转换的源代码，否则无法转换到新增状态；而且修改某个状态类的行为也需修改对应类的源代码。

          

               3. 适用场景

               在以下情况下可以考虑使用状态模式：

               (1) 对象的行为依赖于它的状态（如某些属性值），状态的改变将导致行为的变化。

               (2) 在代码中包含大量与对象状态有关的条件语句，这些条件语句的出现，会导致代码的可维护性和灵活性变差，不能方便地增加和删除状态，并且导致客户类与类库之间的耦合增强。
         ————————————————

                                     版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。
                                 
         原文链接：https://blog.csdn.net/lovelion/article/details/8523162
         */
        // insert code here...
        Account *ac = [Account accountWithOwner:@"段誉" balance:0.0];
        [ac deposit:1000];
        [ac withdraw:2000];
        [ac deposit:3000];
        [ac withdraw:4000];
        [ac withdraw:1000];
        [ac computeInterest];
    }
    return 0;
}