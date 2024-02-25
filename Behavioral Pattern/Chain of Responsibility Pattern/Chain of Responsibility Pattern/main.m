//
//  main.m
//  Chain of Responsibility Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "Director.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         职责链模式总结
               职责链模式通过建立一条链来组织请求的处理者，请求将沿着链进行传递，请求发送者无须知道请求在何时、何处以及如何被处理，实现了请求发送者与处理者的解耦。在软件开发中，如果遇到有多个对象可以处理同一请求时可以应用职责链模式，例如在Web应用开发中创建一个过滤器(Filter)链来对请求数据进行过滤，在工作流系统中实现公文的分级审批等等，使用职责链模式可以较好地解决此类问题。

          

                1.主要优点

               职责链模式的主要优点如下：

                (1) 职责链模式使得一个对象无须知道是其他哪一个对象处理其请求，对象仅需知道该请求会被处理即可，接收者和发送者都没有对方的明确信息，且链中的对象不需要知道链的结构，由客户端负责链的创建，降低了系统的耦合度。

                (2) 请求处理对象仅需维持一个指向其后继者的引用，而不需要维持它对所有的候选处理者的引用，可简化对象的相互连接。

                (3) 在给对象分派职责时，职责链可以给我们更多的灵活性，可以通过在运行时对该链进行动态的增加或修改来增加或改变处理一个请求的职责。

                (4) 在系统中增加一个新的具体请求处理者时无须修改原有系统的代码，只需要在客户端重新建链即可，从这一点来看是符合“开闭原则”的。

               

                2.主要缺点

               职责链模式的主要缺点如下：

                (1) 由于一个请求没有明确的接收者，那么就不能保证它一定会被处理，该请求可能一直到链的末端都得不到处理；一个请求也可能因职责链没有被正确配置而得不到处理。

                (2) 对于比较长的职责链，请求的处理可能涉及到多个处理对象，系统性能将受到一定影响，而且在进行代码调试时不太方便。

                (3) 如果建链不当，可能会造成循环调用，将导致系统陷入死循环。

          

                3.适用场景

               在以下情况下可以考虑使用职责链模式：

                (1) 有多个对象可以处理同一个请求，具体哪个对象处理该请求待运行时刻再确定，客户端只需将请求提交到链上，而无须关心请求的处理对象是谁以及它是如何处理的。

                (2) 在不明确指定接收者的情况下，向多个对象中的一个提交一个请求。

                 (3) 可动态指定一组对象处理请求，客户端可以动态创建职责链来处理请求，还可以改变链中处理者之间的先后次序。
         ————————————————

                                     版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。
                                 
         原文链接：https://blog.csdn.net/lovelion/article/details/7420902
         */
        // insert code here...
        NSObject <Approver> *director = [[Director alloc] init];
        director.name = @"张无忌";
        
        NSObject <Approver> *president = [[President alloc] init];
        president.name = @"郭靖";
        
        NSObject <Approver> *congress = [[Congress alloc] init];
        congress.name = @"董事会";
        
        director.nextApprover = president;
        president.nextApprover = congress;
        
        PurchaseRequest *request1 = [PurchaseRequest purchanseWithAmount:45000 number:10001 purpose:@"购买倚天剑"];
        [director processRequest:request1];
        
        PurchaseRequest *request2 = [PurchaseRequest purchanseWithAmount:90000 number:10002 purpose:@"购买复活丹"];
        [director processRequest:request2];
        
        PurchaseRequest *request3 = [PurchaseRequest purchanseWithAmount:600000 number:10009 purpose:@"举行舞林大会"];
        [director processRequest:request3];
    }
    return 0;
}
