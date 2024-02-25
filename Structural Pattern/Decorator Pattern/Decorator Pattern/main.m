//
//  main.m
//  Decorator Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import <Foundation/Foundation.h>
#import "ScrollBarDecorator.h"
#import "Window.h"
#import "BlackBorderDecorator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        /*
         装饰模式总结
               装饰模式降低了系统的耦合度，可以动态增加或删除对象的职责，并使得需要装饰的具体构件类和具体装饰类可以独立变化，以便增加新的具体构件类和具体装饰类。在软件开发中，装饰模式应用较为广泛，例如在JavaIO中的输入流和输出流的设计、javax.swing包中一些图形界面构件功能的增强等地方都运用了装饰模式。

         1.主要优点

               装饰模式的主要优点如下：

         (1) 对于扩展一个对象的功能，装饰模式比继承更加灵活性，不会导致类的个数急剧增加。

         (2) 可以通过一种动态的方式来扩展一个对象的功能，通过配置文件可以在运行时选择不同的具体装饰类，从而实现不同的行为。

         (3) 可以对一个对象进行多次装饰，通过使用不同的具体装饰类以及这些装饰类的排列组合，可以创造出很多不同行为的组合，得到功能更为强大的对象。

         (4) 具体构件类与具体装饰类可以独立变化，用户可以根据需要增加新的具体构件类和具体装饰类，原有类库代码无须改变，符合“开闭原则”。

         2.主要缺点

               装饰模式的主要缺点如下：

         (1) 使用装饰模式进行系统设计时将产生很多小对象，这些对象的区别在于它们之间相互连接的方式有所不同，而不是它们的类或者属性值有所不同，大量小对象的产生势必会占用更多的系统资源，在一定程序上影响程序的性能。

         (2) 装饰模式提供了一种比继承更加灵活机动的解决方案，但同时也意味着比继承更加易于出错，排错也很困难，对于多次装饰的对象，调试时寻找错误可能需要逐级排查，较为繁琐。

         3.适用场景

               在以下情况下可以考虑使用装饰模式：

         (1) 在不影响其他对象的情况下，以动态、透明的方式给单个对象添加职责。

         (2) 当不能采用继承的方式对系统进行扩展或者采用继承不利于系统扩展和维护时可以使用装饰模式。不能采用继承的情况主要有两类：第一类是系统中存在大量独立的扩展，为支持每一种扩展或者扩展之间的组合将产生大量的子类，使得子类数目呈爆炸性增长；第二类是因为类已定义为不能被继承（如Java语言中的final类）
         ————————————————

                                     版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。
                                 
         原文链接：https://blog.csdn.net/lovelion/article/details/7425873
         */
        NSObject <Component> *component = [[Window alloc] init];
        
        ScrollBarDecorator *sbd = [[ScrollBarDecorator alloc] init];
        sbd.component = component;
        
        BlackBorderDecorator *bbd = [[BlackBorderDecorator alloc] init];
        bbd.component = sbd;
        [bbd display];
    }
    return 0;
}
