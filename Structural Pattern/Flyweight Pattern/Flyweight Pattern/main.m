//
//  main.m
//  Flyweight Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "IgoChessmanFactory.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        /*
         享元模式总结
                当系统中存在大量相同或者相似的对象时，享元模式是一种较好的解决方案，它通过共享技术实现相同或相似的细粒度对象的复用，从而节约了内存空间，提高了系统性能。相比其他结构型设计模式，享元模式的使用频率并不算太高，但是作为一种以“节约内存，提高性能”为出发点的设计模式，它在软件开发中还是得到了一定程度的应用。

                1.主要优点

                享元模式的主要优点如下：

                (1) 可以极大减少内存中对象的数量，使得相同或相似对象在内存中只保存一份，从而可以节约系统资源，提高系统性能。

                (2) 享元模式的外部状态相对独立，而且不会影响其内部状态，从而使得享元对象可以在不同的环境中被共享。

                2.主要缺点

                享元模式的主要缺点如下：

                (1) 享元模式使得系统变得复杂，需要分离出内部状态和外部状态，这使得程序的逻辑复杂化。

                (2) 为了使对象可以共享，享元模式需要将享元对象的部分状态外部化，而读取外部状态将使得运行时间变长。

                3.适用场景

                在以下情况下可以考虑使用享元模式：

                (1) 一个系统有大量相同或者相似的对象，造成内存的大量耗费。

                (2) 对象的大部分状态都可以外部化，可以将这些外部状态传入对象中。

                (3) 在使用享元模式时需要维护一个存储享元对象的享元池，而这需要耗费一定的系统资源，因此，应当在需要多次重复使用享元对象时才值得使用享元模式。
         ————————————————

                                     版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。
                                 
         原文链接：https://blog.csdn.net/lovelion/article/details/7667901
         */
        NSObject <IgoChessman> *black1, *black2, *white1, *white2;
        black1 = [[IgoChessmanFactory defaultFactory] getIgoChessman:@"b"];
        black2 = [[IgoChessmanFactory defaultFactory] getIgoChessman:@"b"];
        
        NSLog(@"判断两颗黑子是否相同:%d", black1 == black2);
        
        white1 = [[IgoChessmanFactory defaultFactory] getIgoChessman:@"w"];
        white2 = [[IgoChessmanFactory defaultFactory] getIgoChessman:@"w"];
        
        NSLog(@"判断两颗白子是否相同:%d", white1 == white2);
        //虽然我们获取了三个黑子对象和两个白子对象，但是它们的内存地址相同，也就是说，它们实际上是同一个对象。在实现享元工厂类时我们使用了单例模式和简单工厂模式，确保了享元工厂对象的唯一性，并提供工厂方法来向客户端返回享元对象
        [black1 display];
        [black2 display];
        [white1 display];
        [white2 display];
        
        
        //OC中静态字符串就是可以类比享元模式的一种设计方案,只要字符串相同,无论使用多少次,内存地址都一样.
        NSString *test = @"享元模式测试字符串";
        NSLog(@"%p,%p", test, @"享元模式测试字符串");
        
    }
    return 0;
}
